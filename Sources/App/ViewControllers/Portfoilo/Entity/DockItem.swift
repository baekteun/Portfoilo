import Foundation

struct DockItem: Equatable, Hashable {
    let imgPath: String
    let dynamicIslandDisplay: DynamicIslandDisplayStyle
}

let dockItems: [DockItem] = [
    .init(imgPath: "images/dock/discord.jpg", dynamicIslandDisplay: .discord),
    .init(imgPath: "images/dock/mail.png", dynamicIslandDisplay: .mail),
    .init(imgPath: "images/dock/appstore.png", dynamicIslandDisplay: .appStore),
    .init(imgPath: "images/dock/github.png", dynamicIslandDisplay: .github),
]
