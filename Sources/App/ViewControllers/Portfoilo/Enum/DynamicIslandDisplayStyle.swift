enum DynamicIslandDisplayStyle {
    case `default`
    case discord
    case mail
    case appStore
    case github
}

extension DynamicIslandDisplayStyle {
    var link: String {
        switch self {
        case .`default`:
            return "https://baegteun.notion.site/Portfoilo-6dbc2078bf324958aa4ffb523d0cdbe2"

        case .github:
            return "https://github.com/baekteun"
            
        case .discord:
            return "https://discord.com/users/330273418119479297"

        case .mail:
            return "mailto:baegteun@gmail.com"

        case .appStore:
            return "https://apps.apple.com/kr/developer/hyeongwoo-choi/id1614205706"
        }
    }

    var name: String {
        switch self {
        case .`default`, .appStore:
            return "최형우"

        case .mail, .github, .discord:
            return "baegteun"
        }
    }

    var subName: String {
        switch self {
        case .`default`:
            return "Notion"

        case .github:
            return "Github"

        case .discord:
            return "Discord"

        case .mail:
            return "Mail"

        case .appStore:
            return "AppStore"
        }
    }

    var srcPath: String {
        switch self {
        case .`default`:
            return "images/baegteun.jpeg"

        case .github:
            return "images/dock/github.png"

        case .discord:
            return "images/dock/discord.jpg"

        case .appStore:
            return "images/dock/appstore.png"

        case .mail:
            return "images/dock/mail.png"
        }
    }
}
