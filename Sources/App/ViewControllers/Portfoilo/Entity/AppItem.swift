import Web

struct AppItem: Equatable, Hashable {
    let id: String
    let name: String
    let imgPath: String
}

let appItems: [AppItem] = [
    .init(id: "GUI", name: "GUI", imgPath: "images/app/gui.svg"),
    .init(id: "SIMTONG", name: "심통 - Simtong", imgPath: "images/app/simtong.png"),
    .init(id: "DMS", name: "DMS", imgPath: "images/app/dms.png"),
    .init(id: "TODAYWHAT", name: "오늘뭐임", imgPath: "images/app/todaywhat.png"),
    .init(id: "GRIG", name: "GRIG", imgPath: "images/app/grig.png"),
    .init(id: "MOIZA", name: "모이자!", imgPath: "images/app/moiza.png"),
    .init(id: "GCMS", name: "GCMS", imgPath: "images/app/gcms.png"),
    .init(id: "GAUTH", name: "GAuth", imgPath: "images/app/gauth.svg"),
    .init(id: "JUSTMEMO", name: "그저 메모", imgPath: "images/app/justmemo.png")
]

