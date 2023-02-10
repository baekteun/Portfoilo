import Foundation

struct DockItem: Equatable, Hashable {
    let imgPath: String
}

let dockItems: [DockItem] = [
    .init(imgPath: "images/dock/call.png"),
    .init(imgPath: "images/dock/mail.png"),
    .init(imgPath: "images/dock/appstore.png"),
    .init(imgPath: "images/dock/github.png")
]
