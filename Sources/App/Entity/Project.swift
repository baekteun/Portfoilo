import Foundation

struct Project: Equatable, Hashable {
    let id: String
    let name: String
    let fullName: String?
    let links: [RelatedLink]
    let bannerURL: String
    let role: String
    let period: String
    let team: RelatedLink?
    let projectInfo: ProjectInfo

    init(
        id: String,
        name: String,
        fullName: String? = nil,
        links: [RelatedLink],
        bannerURL: String,
        role: String,
        period: String,
        team: RelatedLink? = nil,
        projectInfo: ProjectInfo
    ) {
        self.id = id
        self.name = name
        self.fullName = fullName
        self.links = links
        self.bannerURL = bannerURL
        self.role = role
        self.period = period
        self.team = team
        self.projectInfo = projectInfo
    }
}

extension Project {
    static let liveValue: [Project] = [
        gui,
        simtong,
        dms,
        todayWhat,
        grig,
        moiza,
        gcms,
        webPortfoilo,
        gauth,
        justMemo
    ]
}

private let gui = Project(
    id: "GUI",
    name: "GUI",
    fullName: "GSM User Interface",
    links: [
        RelatedLink(name: "Github", url: "https://github.com/GSM-MSG/GUI-iOS")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/218129559-3cefe42f-1a00-49c9-b338-3e6bd4abd18b.svg",
    role: "iOS Developer, iOS Leader",
    period: "2023.01 ~",
    team: RelatedLink(name: "MSG.Team", url: "https://github.com/GSM-MSG"),
    projectInfo: ProjectInfo(
        summary: "광주소프트웨어마이스터고등학교 교내 서비스 통합 시스템",
        experiences: [
            "Github Action을 사용한 CI를 구축. Dependency 캐싱을 통해 기존 30분이상 걸리던 CI 시간을 5분내외로 절약",
            "iOS 팀 내 테크스펙을 도입하여 개발 효율성 증대",
            "모듈 구조 설계",
            "Features - Services - Core - Shared로 4 레이어를 가지도록 설계",
            "Feature와 Service는 도메인 관점에서 분리, Core와 Shared는 재사용 관점에서 분리",
            "Micro Feature를 적용하여 Target도 모듈화",
            "Swift를 사용한 모듈 생성 자동화"
        ],
        stack: [
            "UIKit",
            "Combine",
            "MVVM",
            "Tuist"
        ],
        team: "Android 3명 - iOS 4명 - FrontEnd 5명 - BackEnd 4명 - Design 1명"
    )
)
private let simtong = Project(
    id: "SIMTONG",
    name: "심통 - Simtong",
    links: [],
    bannerURL: "https://user-images.githubusercontent.com/74440939/217274736-4df86192-22bd-4244-b34c-d2a242aa18e1.png",
    role: "iOS Developer, iOS Leader",
    period: "2022.06 ~ ",
    team: .init(name: "COMIT Team", url: "https://github.com/Team-ComIT"),
    projectInfo: ProjectInfo(
        summary: "(주) 로쏘 - 성심당 사내 일정 관리 서비스",
        experiences: [
            "Xcode Cloud를 사용한 CI/CD 구축",
            "모듈 구조 설계",
            "Feature - Service - Modules의 3 레이어를 가지게 설계",
            "Feature를 도메인 관점으로 분리, 이외의 레이어는 재사용 관점에서 분리하도록 유도",
            "iOS 파트 내 테크 스펙 도입",
            "python을 사용하여 모듈을 생성하는 것을 자동화",
            "Makefile을 사용하여 여러 자동화 명령어 정의",
            "SwiftUI와 MVVM의 상태 관리에 불편함을 느껴 The Composable Architecture로 마이그레이션 작업 중"
        ],
        stack: [
            "SwiftUI",
            "MVVM",
            "The Composable Architecture",
            "Async/Await",
            "Tuist"
        ],
        team: "PM 1명 - Android 2명 - iOS 2명 - FrontEnd 3명 - BackEnd 2명 - Design 3명"
    )
)
private let dms = Project(
    id: "DMS",
    name: "DMS",
    fullName: "Dormitory Management System",
    links: [
        RelatedLink(name: "Github", url: "https://github.com/team-aliens/DMS-iOS")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/217276039-04895d45-908a-45ac-be68-a0abe58c2f10.png",
    role: "iOS Developer, iOS Leader",
    period: "2022.08. ~ ",
    team: .init(name: "Team Aliens", url: "https://github.com/team-aliens"),
    projectInfo: ProjectInfo(
        summary: "전국의 기숙사를 위한 기숙사 관리 시스템 제공 서비스",
        experiences: [
            "스프린트마다 KPT회고를 하며 팀의 성장을 도모",
            "모듈 구조 설계",
            "개발 효율성 증대를 위해 Xcode 템플릿 제작",
            "SwiftUI에서 Carousel View를 만드는 경험"
        ],
        stack: [
            "SwiftUI",
            "MVVM",
            "Combine",
            "Tuist"
        ],
        team: "PM 1명 - Android 3명 - iOS 3명 - FrontEnd 3명 - BackEnd 3명 - Design 4명"
    )
)
private let todayWhat = Project(
    id: "TODAYWHAT",
    name: "오늘 뭐임",
    links: [
        .init(name: "Github(Prev)", url: "https://github.com/baekteun/TodayWhat"),
        .init(name: "Github(New)", url: "https://github.com/baekteun/TodayWhat-new"),
        .init(name: "AppStore", url: "https://apps.apple.com/app/id1629567018")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/218139221-79bf3d91-515c-4f2d-aac1-b0e718d8050c.png",
    role: "iOS, macOS, watchOS Developer",
    period: "2022.06. ~ 릴리즈",
    projectInfo: .init(
        summary: "아이폰과 맥의 위젯, 애플워치, 맥의 Menubar에서도 편리하게 급식/시간표를 확인할 수 있는 서비스",
        experiences: [
            "App Group을 사용하여 iOS와 iOS 위젯 / macOS와 macOS 위젯간의 데이터 공유를 다룬 경험",
            "Watch Connectivity를 사용한 iOS와 watchOS의 통신",
            "Swift Package Manager를 사용한 모듈화",
            "멀티 플랫폼 지원 경험 (iOS, macOS, watchOS)",
            "XCConfig를 사용하여 Github에서 API Key를 숨긴 경험"
        ],
        stack: [
            "SwiftUI",
            "The Composable Architecture",
            "MVVM",
            "Async/Await",
            "Swift Package Manager"
        ]
    )
)
private let grig = Project(
    id: "GRIG",
    name: "GRIG",
    fullName: "Github Rank In GSM",
    links: [
        .init(name: "Github", url: "https://github.com/baekteun/GRIG-iOS"),
        .init(name: "AppStore", url: "https://apps.apple.com/kr/app/gri-g/id1622010590")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/218139901-91b1a793-244f-4fbd-8e12-db33f4a8aa91.png",
    role: "iOS Developer",
    period: "2022.04. ~ 릴리즈",
    projectInfo: .init(
        summary: "광주소프트웨어마이스터고등학교 학생들의 Github 활동 장려 랭킹 서비스",
        experiences: [
            "RIBs를 사용한 경험",
            "Apollo-iOS를 사용해 GraphQL API와 통신",
            "Tuist를 사용한 모듈화 경험",
            "Feature(Presentation), Data, Domain의 Clean Architecture를 기반으로 한 레이어 설계",
            "Feature는 도메인관점에서 RIB별로 분리"
        ],
        stack: [
            "RIBs",
            "RxSwift",
            "Clean Architecture",
            "Apollo-iOS"
        ]
    )
)
private let moiza = Project(
    id: "MOIZA",
    name: "모이자!",
    links: [
        .init(name: "Github", url: "https://github.com/Software-Meister-High-School-Community/MOIZA-iOS")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/218140632-cab68766-3e8c-43a9-8222-65ba9538a820.png",
    role: "iOS Developer, iOS Leader",
    period: "2021.09. ~ 2022.08.",
    team: .init(name: "Connect Team", url: "https://github.com/Software-Meister-High-School-Community"),
    projectInfo: .init(
        summary: "전국 소프트웨어마이스터고등학교의 학생들과 졸업생, 재학생의 소통을 연결하는 SNS",
        experiences: [
            "Github Action을 사용한 CI 구축",
            "소통과 일정 관리가 잘 이루어지지 않아 프로젝트의 진척도가 크게 느렸고 결국엔 끝을 내지 못한 경험",
            "이후부터는 프로젝트를 진행하며 일정 관리에 대한 중요도를 인지하고 일정 관련 일에 주도적, 적극적으로 참여"
        ],
        stack: [
            "ReactorKit",
            "RxSwift",
            "Clean Architecture"
        ],
        team: "Android 3명 - iOS 3명 - FrontEnd 4명 - BackEnd 4명 - Design 3명"
    )
)
private let gcms = Project(
    id: "GCMS",
    name: "GCMS",
    fullName: "GSM Club Management Service",
    links: [
        .init(name: "Github", url: "https://github.com/GSM-MSG/GCMS-iOS"),
        .init(name: "AppStore", url: "https://apps.apple.com/kr/app/gcms/id1616315883")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/218141848-a451f87c-9017-46b4-b267-86066f361521.png",
    role: "iOS Developer, iOS Leader",
    period: "2022.02. ~ 릴리즈",
    team: .init(name: "MSG.Team", url: "https://github.com/GSM-MSG"),
    projectInfo: .init(
        summary: "광주소프트웨어마이스터고등학교의 동아리를 관리하는 서비스",
        experiences: [
            "Github Action을 사용한 CI 구축, 의존성 캐싱을 통해 기존보다 10분을 절감시킨 경험",
            "문서화가 제대로 되지 않았고, 자잘한 회의의 결과 같은게 잘 공유되지 않아 겪은 트러블이 많아 문서화와 소통에 대한 중요성에 대해 크게 인지",
            "ReactorKit을 사용한 단방향 상태관리에 대한 경험",
            "RxFlow를 사용한 Coordinator 패턴에 대한 경험",
            "fastlane을 사용한 CD(TestFlight) 구축"
        ],
        stack: [
            "ReactorKit",
            "RxSwift",
            "Clean Architecture"
        ],
        team: "Android 4명 - iOS 2명 - FrontEnd 3명 - BackEnd 5명 - Design 2명"
    )
)
private let gauth = Project(
    id: "GAUTH",
    name: "GAuth",
    fullName: "GSM OAuth",
    links: [
        .init(name: "WebSite", url: "https://gauth.co.kr")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/218143038-7af0ed80-3bc2-4e78-a271-db0a6c9841ed.svg",
    role: "Project Manager, Backend Developer",
    period: "2022.07. ~ 릴리즈",
    team: .init(name: "MSG.Team", url: "https://github.com/GSM-MSG"),
    projectInfo: .init(
        summary: "광주소프트웨어마이스터고등학교 교내 OAuth 서비스",
        experiences: [
            "기획, 문서 작성에 95%이상 참여",
            "애자일 프로세스 도입 경험",
            "백엔드 개발 10%이상 참여"
        ],
        stack: [
            "Notion",
            "Kotlin",
            "Spring Boot"
        ],
        team: "PM 1명 - Frontend 2명 - Backend 2명 - Design 1명"
    )
)
private let justMemo = Project(
    id: "JUSTMEMO",
    name: "그저 메모",
    links: [
        .init(name: "Github", url: "https://github.com/baekteun/TripleFastMemo"),
        .init(name: "AppStore", url: "https://apps.apple.com/kr/app/%EA%B7%B8%EC%A0%80-%EB%A9%94%EB%AA%A8/id1662030275")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/218143749-2402a2fb-c3ad-42ff-9984-24d4fe5a70c3.png",
    role: "iOS Developer",
    period: "2022.12. ~ 릴리즈",
    projectInfo: .init(
        summary: "홈화면, 잠금화면 위젯에서 바로 접근할 수 있는 접근성과 정말 단순히 메모만 하는 기능이 서비스",
        experiences: [
            "SwiftUI와 MVI를 사용한 단방향 상태관리에 대해 경험"
        ],
        stack: [
            "SwiftUI",
            "MVI",
            "GRDB.swift"
        ]
    )
)
private let webPortfoilo = Project(
    id: "WEBPORTFOILO",
    name: "Portfoilo Website",
    links: [
        .init(name: "Github", url: "https://github.com/baekteun/Portfoilo"),
        .init(name: "WebSite", url: "https://baegteun.com")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/219048677-32145ade-1ea7-446b-bfd6-2dd4348d6e65.png",
    role: "Web Developer",
    period: "2023.02. ~ 릴리즈",
    projectInfo: .init(
        summary: "",
        experiences: [
            "SwifWeb을 사용하여 Swift코드만 작성해 웹페이지 구축",
            "wasm에 대한 미약한 학습",
            "css에 대한 간접적인 학습"
        ],
        stack: [
            "SwifWeb",
            "SwiftWasm",
            "JavaScriptKit"
        ]
    )
)
