import Web

class NotFoundViewController: ViewController {
    @DOM override var body: DOM.Content {
        P("this is catchall aka 404 NOT FOUND page")
            .textAlign(.center)
    }
}

/// Live preview works in both XCode and VSCode
/// To make it work in XCode install the `XLivePreview` app
/// To make it work in VSCode install `webber` extension
class NotFound_Preview: WebPreview {
    override class var title: String { "Not found endpoint" } // optional
    override class var width: UInt { 200 } // optional
    override class var height: UInt { 200 } // optional

    @Preview override class var content: Preview.Content {
        NotFoundViewController()
    }
}
