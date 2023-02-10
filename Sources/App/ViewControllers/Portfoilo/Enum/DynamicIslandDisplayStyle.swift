enum DynamicIslandDisplayStyle {
    case `default`
    case telephone
    case mail
    case appStore
    case github
}

extension DynamicIslandDisplayStyle {
    var link: String {
        switch self {
        case .`default`:
            return "https://github.com/baekteun"
            
        case .telephone:
            return "https://baegteun.notion.site/Portfoilo-6dbc2078bf324958aa4ffb523d0cdbe2"

        case .mail:
            return "mailto:baegteun@gmail.com"

        case .appStore:
            return "https://apps.apple.com/kr/developer/hyeongwoo-choi/id1614205706"

        case .github:
            return "https://github.com/baekteun"
        }
    }

    var name: String {
        switch self {
        case .telephone, .appStore:
            return "최형우"

        case .`default`, .mail, .github:
            return "baegteun"
        }
    }

    var subName: String {
        switch self {
        case .`default`:
            return "Github"

        case .telephone:
            return "Notion"

        case .mail:
            return "Mail"

        case .appStore:
            return "AppStore"

        case .github:
            return "Github"
        }
    }
}
