import Web

final class ProjectInfoView: Div {
    private let project: Project

    init(project: Project) {
        self.project = project
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

                P(self.project.projectInfo.summary)
                    .lineHeight(20.px)

                P(self.project.role)
                    .color(.gray)

                P(self.project.period)
                    .color(.gray)
            }
            .fontSize(.large)
            .class(.sectionContainer)

            Div {
                H3("👨‍💻 Experiences")

                Div {
                    ForEach(self.project.projectInfo.experiences) { experience in
                        Li(experience)
                            .fontSize(.large)
                    }
                }
                .lineHeight(25.px)
            }
            .class(.sectionContainer)

            Div {
                H3("⚒️ Stack")

                Div {
                    Li()

                    ForEach(self.project.projectInfo.stack) { stack in
                        P {
                            Span(stack)
                                .color(r: 218, g: 97, b: 92)
                                .backgroundColor(r: 41, g: 41, b: 39)
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
                .fontSize(.large)
                .display(.flex)
                .flexDirection(.row)
            }
            .class(.sectionContainer)

            if let team = self.project.projectInfo.team {
                Div {
                    H3("👥 Team")

                    Li(team)

                    if let link = self.project.team {
                        Li {
                            A(link.name)
                                .color(.skyBlue)
                                .href(link.url)
                                .target(.blank)
                        }
                    }
                }
                .class(.sectionContainer)
                .lineHeight(25.px)
                .fontSize(.large)
            }
        }
        .color(.white)

        Stylesheet {
            CSSRule(Div.class(.sectionContainer))
                .lineHeight(5.px)
                .paddingBottom(20.px)
        }
    }
}

private extension Class {
    static let sectionContainer: Class = "SectionContainer"
}
