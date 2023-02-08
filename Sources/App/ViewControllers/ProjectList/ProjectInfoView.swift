import Web

final class ProjectInfoView: Div {
    private let projectInfo: ProjectInfo

    init(projectInfo: ProjectInfo) {
        self.projectInfo = projectInfo
    }

    required init() {
        fatalError("init() has not been implemented")
    }

    required convenience init<U>(_ title: U) where U : UniValue, U.UniValue == String {
        fatalError("init(_:) has not been implemented")
    }

    @DOM override var body: DOM.Content {
        Div {
            Div {
                H3("📙 Summary")

                P(self.projectInfo.summary)
                    .lineHeight(20.px)
            }
            .class(.sectionContainer)

            Div {
                H3("👨‍💻 Experiences")

                Div {
                    ForEach(self.projectInfo.experiences) { experience in
                        Li(experience)
                    }
                }
                .lineHeight(20.px)
            }
            .class(.sectionContainer)

            Div {
                H3("⚒️ Stack")

                Div {
                    Li()

                    ForEach(self.projectInfo.stack) { stack in
                        P {
                            Span(stack)
                                .color(r: 218, g: 97, b: 92)
                                .backgroundColor(r: 237, g: 237, b: 237)
                                .padding(v: 0.px, h: 5.px)
                                .borderRadius(all: .length(4.px))
                        }
                        .margin(v: 2.5.px, h: 3.px)
                    }

                    P {
                        Span("...")
                            .color(r: 218, g: 97, b: 92)
                    }
                    .margin(v: 2.5.px, h: 3.px)
                }
                .display(.flex)
                .flexDirection(.row)
            }
            .class(.sectionContainer)

            if let team = self.projectInfo.team {
                Div {
                    H3("👥 Team")

                    Li(team)
                }
                .class(.sectionContainer)
            }
        }

        Stylesheet {
            CSSRule(Div.class(.sectionContainer))
                .lineHeight(5.px)
                .paddingBottom(20.px)
        }
    }
}

private extension Class {
    static let sectionContainer: Class = "SectionContainer"
    static let zStack: Class = "ZStack"
}
