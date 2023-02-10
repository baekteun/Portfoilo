import Web

struct AppItem: Equatable, Hashable {
    let name: String
    let imgPath: String
}

let appItems: [AppItem] = [
    .init(name: "GUI", imgPath: "images/app/gui.svg"),
    .init(name: "심통 - Simtong", imgPath: "images/app/simtong.png"),
    .init(name: "DMS", imgPath: "images/app/dms.png"),
    .init(name: "오늘뭐임", imgPath: "images/app/todaywhat.png"),
    .init(name: "GRIG", imgPath: "images/app/grig.png"),
    .init(name: "모이자!", imgPath: "images/app/moiza.png"),
    .init(name: "GCMS", imgPath: "images/app/gcms.png"),
    .init(name: "GAuth", imgPath: "images/app/gauth.svg"),
    .init(name: "그저 메모", imgPath: "images/app/justmemo.png")
]

