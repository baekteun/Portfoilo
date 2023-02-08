import Foundation

struct Project: Equatable, Hashable {
    let name: String
    let fullName: String?
    let links: [RelatedLink]
    let bannerURL: String
    let role: String
    let period: String
    let team: RelatedLink?
    let projectInfo: ProjectInfo

    init(
        name: String,
        fullName: String? = nil,
        links: [RelatedLink],
        bannerURL: String,
        role: String,
        period: String,
        team: RelatedLink? = nil,
        projectInfo: ProjectInfo
    ) {
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
        dms
    ]
}

private let gui = Project(
    name: "GUI",
    fullName: "GSM User Interface",
    links: [
        RelatedLink(name: "Github", url: "https://github.com/GSM-MSG/GUI-iOS")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/217202114-eb99351f-f1d5-4a06-8904-fb0596763856.svg",
    role: "iOS Developer\niOS Leader",
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
    name: "심통 - Simtong",
    links: [],
    bannerURL: "https://user-images.githubusercontent.com/74440939/217274736-4df86192-22bd-4244-b34c-d2a242aa18e1.png",
    role: "iOS Developer\niOS Leader",
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
    name: "DMS",
    fullName: "Dormitory Management System",
    links: [
        RelatedLink(name: "Github", url: "https://github.com/team-aliens/DMS-iOS")
    ],
    bannerURL: "https://user-images.githubusercontent.com/74440939/217276039-04895d45-908a-45ac-be68-a0abe58c2f10.png",
    role: "iOS Developer\niOS Leader",
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
