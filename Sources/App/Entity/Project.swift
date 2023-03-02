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
            "iOS 팀 내에 테크스펙을 도입하여 개발 효율성을 증대시키고자 한 경험이 있습니다.",
            "모듈식 아키텍쳐 구조를 Feature - Service - Core - Shared로 4계층으로, Feature는 주로 유저와 맞닿는 Presentation영역, Service는 주요 비즈니스 로직을 처리하는 영역, Core는 모듈들의 공통적으로 쓰일 기능을 가진 영역, Shared는 외부 의존성과 완전히 분리된 공통 로직을 가진 영역을 기준으로 레이어를 분리하였습니다. Feature와 Service레이어는 도메인 관점에서, Core와 Shared는 재사용 관점에서 하위 모듈을 분리하도록 레이어를 설계하였습니다.",
            "이전 프로젝트에서 Feature와 Feature간 의존성을 연결할 때 순환 참조에 관한 이슈를 경험한 적이 있어, Project단위의 모듈 분리만이 아닌 Project안에서도 Target을 Micro Feature를 사용하여 수평확장이 용이하도록 설계하였습니다.",
            "Swift를 사용하여 모듈 생성, 외부 의존성 추가 등의 반복되고 귀찮은 작업을 간편하게 할 수 있도록 Scaffold를 만든 경험이 있습니다."
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
            "Xcode Cloud를 사용하여 CI/CD를 구축하여 업무 효율성을 높힌 경험이 있습니다.",
            "모듈식 아키텍쳐 구조를 Feature - Service - Module 로 3계층으로, Feature는 주로 유저와 맞닿는 Presentation영역, Service는 주요 비즈니스 로직을 처리하는 영역, Module는 모듈들의 공통적으로 쓰일 기능을 가진 영역을 기준으로 레이어를 분리하였습니다.",
            "SwiftUI와 MVVM을 사용한 상태 관리에 불편함을 느껴 The Composable Architecture로 마이그레이션 작업을 진행하고 있습니다."
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
            "스프린트의 끝마다 KPT 회고를 하여 팀의 성장을 도모한 경험이 있습니다. 이를 통해 팀원 간의 소통이 원활히 일어나며, 문제점을 더 빠르게 파악하고 해결할 수 있었습니다. 또한, 이를 통해 팀원들이 서로에게 피드백을 제공하며 서로 발전할 수 있는 기회를 만들었습니다.",
            "Presentation 레이어에서 새로운 Feature모듈을 만들 때 항상 만드는 파일들을 Xcode 파일 템플릿을 제작하여 같은 형식의 코드를 작성할 때 드는 시간을 약 30초가량 절약한 경험이 있습니다. 이를 통해 Scaffold 세팅 시간을 단축시키고, 이를 공유함으로써 팀원들도 같은 방식으로 작업할 수 있어 개발 효율성을 높일 수 있었습니다.",
            "Python을 사용해 모듈의 Scaffold를 만든 경험이 있습니다. 이를 통해 모듈 경로 extension, 모듈의 Project 설정 등의 반복되는 작업을 자동화에 모듈 기본 세팅에 들이는 시간을 단축한 경험이 있습니다.",
            "개발 효율성을 위해 iOS 파트내에서 테크 스펙을 도입한 경험이 있습니다.",
            "Makefile을 사용해 여러줄에 거쳐 실행해야하는 명령어를 간소화한 경험이 있습니다."
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
            "프로젝트를 진행할 때 소통이 잘 이루어지지 않아 분야 막론 전체적인 진척도가 느리거나 한 명에게 리소스가 과하게 집중되는 등의 일이 일어났고 결국에는 끝을 내지 못하였습니다. 이때 프로젝트 진행 동기, 일정 관리 등에 중요성을 크게 느꼈습니다.",
            "이후부터는 프로젝트를 진행하며 일정 관리에 대한 중요도를 인지하고 일정 관련 일에 주도적, 적극적으로 참여하였습니다."
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
            "GIthub Action을 사용해 CI를 구축하였습니다. 이때 의존성 캐싱을 사용해 CI 시간을 기존에 비해 10분 절감시킨 경험이 있습니다.",
            "작은 회의 결과같은게 구두로만 이루어지고 기록으로도 남지않아 사람마다 같은 기능에 다른 생각을 가지거나, 아예 모르는 등의 사태가 일어남에 따라 소통 및 문서화의 중요성에 대해 크게 인지할 수 있었습니다.",
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
            "프로젝트 기획과 문서 작성에 95% 이상 참여하였습니다. 이를 위해 수많은 회의를 진행하고 협력하여 프로젝트에 필요한 요구사항들을 정의하였습니다.",
            "프로젝트를 성공적으로 완수하기 위해 애자일 프로세스를 도입하여 프로젝트를 진행한 경험이 있습니다. 이를 통해 프로젝트 일정등을 효율적으로 관리하고, 팀원들과의 원활한 의사소통을 유지하며 프로젝트를 성공적으로 완료하였습니다.",
            "백엔드 개발에도 10% 이상 참여하였습니다."
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
        summary: "홈화면, 잠금화면 위젯에서 바로 접근할 수 있는 접근성과 정말 단순히 메모만 하는 앱",
        experiences: [
            "SwiftUI와 MVI를 사용한 단방향 상태관리에 대해 경험이 있습니다."
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
            "SwifWeb을 사용하여 Swift코드만 작성해 웹페이지를 구축하였습니다.",
            "wasm에 대한 미약한 학습을 하였습니다.",
            "css에 대한 간접적인 학습을 하였습니다.",
            "Github Action을 사용해 Github Pages에 CD를 구축한 경험이 있습니다.",
            "Cloudflare를 사용한 DNS 설정을 한 경험이 있습니다."
        ],
        stack: [
            "SwifWeb",
            "SwiftWasm",
            "JavaScriptKit"
        ]
    )
)
