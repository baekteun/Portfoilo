import Web

final class ProjectListStyle: Stylesheet {
    required init() { super.init() }
    @Rules
    override var rules: Stylesheet.RuleItems {
        CSSRule(Body.pointer)
            .margin(all: 0.px)
            .padding(all: 0.px)

        CSSRule(Div.class(.ProjectList.projectContainer))
            .padding(v: 30.px, h: 20.percent)
        
        CSSRule(Div.class(.ProjectList.projectHeader))
            .display(.flex)
            .flexDirection(.row)
            .justifyContent(.flexStart)
            .alignItems(.center)

        CSSRule(Div.class(.ProjectList.projectTitle))
            .display(.flex)
            .flexDirection(.row)
            .alignItems(.center)

        CSSRule(Div.class(.ProjectList.textDivider))
            .width(1.px)
            .height(10.px)
            .margin(v: 0, h: 5.px)
            .backgroundColor(.gray)
    }
}

extension Class {
    struct ProjectList {
        static let projectHeader: Class = "ProjectHeader"
        static let projectContainer: Class = "ProjectContainer"
        static let projectTitle: Class = "ProjectTitle"
        static let textDivider: Class = "TextDivider"
    }
}
