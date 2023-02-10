import Foundation

struct DockItem: Equatable, Hashable {
    let imgPath: String
}

let dockItems: [DockItem] = [
    .init(imgPath: "images/dock/call.svg"),
    .init(imgPath: "images/dock/mail.svg"),
    .init(imgPath: "images/dock/appstore.svg"),
    .init(imgPath: "images/dock/github.svg")
]
