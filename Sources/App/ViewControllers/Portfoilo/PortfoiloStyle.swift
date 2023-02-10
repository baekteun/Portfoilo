import Web

final class PortfoiloStyle: Stylesheet {
    required init() { super.init() }

    @Rules
    override var rules: Stylesheet.RuleItems {
        CSSRule(Body.pointer)
            .margin(all: 5.px)
            .padding(all: 5.px)
            .backgroundColor(.black)

        CSSRule(Class.Portfoilo.appWrapper)
            .custom("margin", "0 auto")
            .display(.flex)
            .flex(grow: 1, shrink: 1, basis: 0.percent)
            .marginTop(75.95.px)

        CSSRule(Class.Portfoilo.appContainer)
            .width(356.px)
            .display(.grid)
            .height(100.percent)
            .custom("grid-template-rows", "repeat(auto-fill, 106.743px)")
            .custom("grid-template-columns", "repeat(auto-fill, 89px)")

        CSSRule(Class.Portfoilo.appItemContainer)
            .display(.flex)
            .flexDirection(.column)
            .alignItems(.center)
            .cursor(.pointer)
            .color(.white)

        CSSRule(Class.Portfoilo.appIcon)
            .width(66.px)
            .height(66.px)
            .position(.relative)
            .transitionProperty(.all)
            .transitionDuration(.seconds(0.45))
            .transitionTimingFunction(.linear)
            .zIndex(0)

        CSSRule(Class.Portfoilo.appIconImage)
            .width(66.px)
            .height(66.px)
            .borderRadius(all: .length(16.px))
            .backgroundSize(all: .cover)

        CSSRule(Class.Portfoilo.appIconImage.after)
            .property(.content, "")
            .background(color: .init(r: 0, g: 0, b: 0, a: 0.2))
            .position(.absolute)
            .width(100.percent)
            .height(100.percent)
            .borderRadius(all: .length(16.px))
            .overflow(.hidden)
            .zIndex(1)
            .opacity(0)

        CSSRule(Class.Portfoilo.appIconImage.hover.after)
            .opacity(1)
    }
}

extension Class {
    struct Portfoilo {
        static let appWrapper: Class = "AppWrapper"
        static let appContainer: Class = "AppContainer"
        static let appItemContainer: Class = "AppItemContainer"
        static let appIcon: Class = "AppIcon"
        static let appIconImage: Class = "AppIconImage"
    }
}
