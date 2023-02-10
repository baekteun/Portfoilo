import Web
import Foundation

final class ProjectListViewController: ViewController {
    @DOM override var body: DOM.Content {
        ProjectListStyle()
        Div {
            Div {
                ForEach(Project.liveValue) { project in
                    self.projectView(project: project)

                    Hr()
                        .height(1.px)
                        .margin(v: 30.px, h: 20.percent)
                        .color(.gray)
                }
            }
            .align(.left)
            .justifyContent(.flexStart)
        }
    }

    override func buildUI() {
        super.buildUI()
        title = "프로젝트 리스트"
    }

    @DOM
    func projectView(project: Project) -> DOM.Content {
        Div {
            Div {
                Img()
                    .srcSet(project.bannerURL)
                    .height(150.px)
                    .width(150.px)
                    .borderRadius(all: .length(32.px))
                
                Div {
                    H1("\(project.name)")

                    if let fullName = project.fullName {
                        P("\(fullName)")
                            .color(.gray)
                    }

                    Div {
                        ForEach(project.links) { index, link in
                            A(link.name)
                                .color(.gray)
                                .href(URL(string: link.url))
                                .target(.blank)
                            
                            if index != project.links.count - 1 {
                                Div()
                                    .class(.ProjectList.textDivider)
                            }
                        }
                    }
                    .class(.ProjectList.projectTitle)
                }
                .align(.left)
                .lineHeight(.length(5.px))
                .paddingLeft(30.px)
            }
            .class(.ProjectList.projectHeader)

            Div {
                Div {
                    P(project.role)
                        .fontWeight(.bold)
                        .lineHeight(15.px)

                    P(project.period)
                        .color(.gray)

                    if let team = project.team {
                        A(team.name)
                            .color(.skyBlue)
                            .href(URL(string: team.url))
                            .target(.blank)
                    } else {
                        P("Personal")
                            .color(.skyBlue)
                    }
                }
                .flexGrow(1)

                ProjectInfoView(project: project)
                    .flexGrow(9)
                    .paddingLeft(50.px)
            }
            .display(.flex)
            .flexDirection(.row)
            .lineHeight(10.px)
        }
        .class(.ProjectList.projectContainer)
    }
}
