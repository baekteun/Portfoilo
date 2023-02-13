// Copyright 2020 Carton contributors
// Modifications copyright 2021 Webber contributors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import { SwiftRuntime } from "javascript-kit-swift";
import { WASI } from "@wasmer/wasi";
import { WasmFs } from "@wasmer/wasmfs";

const swift = new SwiftRuntime();

// Instantiate a new WASI Instance
const wasmFs = new WasmFs();// Output stdout and stderr to console
const originalWriteSync = wasmFs.fs.writeSync;
wasmFs.fs.writeSync = (fd, buffer, offset, length, position) => {
    const text = new TextDecoder("utf-8").decode(buffer);
    if (text !== "\n") {
        switch (fd) {
        case 1:
            console.log(text);
            break;
        case 2:console.error(text);            break;
        }
    }
    return originalWriteSync(fd, buffer, offset, length, position);
};
const wasi = new WASI({
    args: [],
    env: {},
    bindings: {
        ...WASI.defaultBindings,
        fs: wasmFs.fs,
    },
});

const startWasiTask = async () => {
    const fetchPromise = fetch("/app.wasm");

    // Fetch our Wasm File
    const response = await fetchPromise

    const reader = response.body.getReader();

    // Step 2: get total length
    const contentLength = +response.headers.get('Content-Length');
    if (response.status == 304) {
        new Event('WASMLoadedFromCache');
    } else if (response.status == 200) {
        if (contentLength > 0) {
            document.dispatchEvent(new Event('WASMLoadingStarted'));
            document.dispatchEvent(new CustomEvent('WASMLoadingProgress', { detail: 0 }));
        } else {
            document.dispatchEvent(new Event('WASMLoadingStartedWithoutProgress'));
        }
    } else {
        document.dispatchEvent(new Event('WASMLoadingError'));
    }    // Step 3: read the data
    let receivedLength = 0;
    let chunks = [];
    while(true) {
        const {done, value} = await reader.read();

        if (done) {
            break;
        }

        chunks.push(value);
        receivedLength += value.length;
        if (contentLength > 0) {
            document.dispatchEvent(new CustomEvent('WASMLoadingProgress', { detail: Math.trunc(receivedLength / (contentLength / 100)) }));
        }
    }

    // Step 4: concatenate chunks into single Uint8Array
    let chunksAll = new Uint8Array(receivedLength);
    let position = 0;
    for (let chunk of chunks) {
        chunksAll.set(chunk, position);
        position += chunk.length;
    }

    // Instantiate the WebAssembly file
    const wasmBytes = chunksAll.buffer;
    
    const patchWASI = function (wasiObject) {
        // PATCH: @wasmer-js/wasi@0.x forgets to call `refreshMemory` in `clock_res_get`,
        // which writes its result to memory view. Without the refresh the memory view,
        // it accesses a detached array buffer if the memory is grown by malloc.
        // But they wasmer team discarded the 0.x codebase at all and replaced it with
        // a new implementation written in Rust. The new version 1.x is really unstable
        // and not production-ready as far as katei investigated in Apr 2022.
        // So override the broken implementation of `clock_res_get` here instead of
        // fixing the wasi polyfill.
        // Reference: https://github.com/wasmerio/wasmer-js/blob/55fa8c17c56348c312a8bd23c69054b1aa633891/packages/wasi/src/index.ts#L557
        const original_clock_res_get = wasiObject.wasiImport["clock_res_get"];
        
        wasiObject.wasiImport["clock_res_get"] = (clockId, resolution) => {
        wasiObject.refreshMemory();
            return original_clock_res_get(clockId, resolution);
        };
        return wasiObject.wasiImport;
    };
    
    var wasmImports = {};
    wasmImports.wasi_snapshot_preview1 = patchWASI(wasi);
    wasmImports.javascript_kit = swift.wasmImports;
    wasmImports.__stack_sanitizer = {
        report_stack_overflow: () => {
            throw new Error("Detected stack buffer overflow.");
        },
    };

    const module = await WebAssembly.instantiate(wasmBytes, wasmImports);

    // Node support
    const instance = "instance" in module ? module.instance : module;
    
    if (swift && instance.exports.swjs_library_version) {
        swift.setInstance(instance);
    }
    
    // Start the WebAssembly WASI instance
    wasi.start(instance);
    
    // Initialize and start Reactor
    if (instance.exports._initialize) {
        instance.exports._initialize();
        instance.exports.main();
    }
};

function handleError(e) {
    console.error(e);
    if (e instanceof WebAssembly.RuntimeError) {
        console.log(e.stack);
    }
}

try {
    startWasiTask().catch(handleError);
} catch (e) {
    handleError(e);
}