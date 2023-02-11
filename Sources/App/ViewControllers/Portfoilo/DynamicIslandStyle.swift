import Web

final class DynamicIslandStyle: Stylesheet {
    @Rules
    override var rules: Stylesheet.RuleItems {
        CSSRule(Class.Portfoilo.dynamicIslandContainer)
            .alignItems(.center)
            .width(100.percent)
            .height(35.px)
            .display(.flex)
            .right(0)
            .left(0)
            .top(0)
            .position(.absolute)

        CSSRule(Class.Portfoilo.dynamicIslandHidden)
            .backgroundColor(.transparent)
            .justifyContent(.center)
            .alignItems(.center)
            .custom("justify-items", "center")
            .width(100.percent)
            .height(100.percent)
            .display(.grid)
            .zIndex(10)

        CSSRule(Class.Portfoilo.dynamicIslandProfile)
            .position(.relative)
            .custom("margin", "auto")
            .custom("aspect-ratio", "1/1")
            .height(75.percent)
            .textAlign(.center)

        CSSRule(Class.Portfoilo.dynamicIslandName)
            .paddingLeft(0.5.rem)
            .width(10.rem)
            .marginTop(2.rem)
            .opacity(1)
            .pointerEvents(.none)
            .textAlign(.left)

        CSSRule(Class.Portfoilo.dynamicIslandProfile.inside(Class.Portfoilo.profileImage))
            .position(.absolute)
            .width(100.percent)
            .height(100.percent)
            .top(0.px)
            .left(0.px)
            .borderRadius(all: .length(9999.px))

        CSSRule(Class.Portfoilo.dynamicIslandIcon)
            .position(.relative)
            .display(.grid)
            .width(48.px)
            .height(48.px)
            .borderRadius(all: .length(100.px))
            .custom("margin", "auto")
            .custom("transform", "scale(0.9) translateZ(0px)")
    }
}

extension Class.Portfoilo {
    static let dynamicIslandContainer: Class = "DynamicIslandContainer"
    static let dynamicIslandHidden: Class = "DynamicIslandHidden"
    static let dynamicIsland: Class = "DynamicIsland"
    static let dynamicIslandContent: Class = "DynamicIslandContent"
    static let dynamicIslandContentInActive: Class = "DynamicIslandContent"
    static let dynamicIslandProfile: Class = "DynamicIslandProfile"
    static let dynamicIslandName: Class = "DynamicIslandName"
    static let dynamicIslandIcon: Class = "DynamicIslandIcon"
}
