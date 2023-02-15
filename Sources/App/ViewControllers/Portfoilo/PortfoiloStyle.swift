import Web

final class PortfoiloStyle: Stylesheet {
    @Rules
    override var rules: Stylesheet.RuleItems {
        CSSRule(Html.pointer)
            .scrollBehavior(.smooth)

        CSSRule(H1.pointer, H2.pointer, H3.pointer, H4.pointer, H5.pointer, H6.pointer, P.pointer, A.pointer, Li.pointer, Span.pointer)
            .fontFamily(.spoqaHanSans)

        CSSRule(Body.pointer)
            .margin(all: 5.px)
            .padding(all: 5.px)
            .backgroundColor(.init(.init("#0C0C0E")))

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

        CSSRule(Class.Portfoilo.projectHeader)
            .display(.flex)
            .flexDirection(.row)
            .justifyContent(.flexStart)
            .alignItems(.center)

        CSSRule(Class.Portfoilo.projectHeader.inside(Class.Portfoilo.projectBanner))
            .height(150.px)
            .width(150.px)
            .borderRadius(all: .length(16.px))
            .overflow(.hidden)

        CSSRule(Class.Portfoilo.projectTitle)
            .display(.flex)
            .flexDirection(.row)
            .alignItems(.center)
            .color(.white)

        CSSRule(Class.Portfoilo.textDivider)
            .color(.Portfoilo.gray)
            .width(1.px)
            .height(10.px)
            .margin(v: 0, h: 5.px)

        CSSRule(Class.Portfoilo.footer)
            .fontSize(.large)
            .fontWeight(.init("600"))
            .lineHeight(0.px)
            .marginTop(50.px)
            .color(.Portfoilo.gray)
            .alignItems(.center)
            .justifyContent(.flexStart)
            .display(.flex)
            .flexDirection(.column)
        
        CSSRule(Class.Portfoilo.footerItem)
            .display(.inlineFlex)
            .flexDirection(.row)
            .alignItems(.center)
            .margin(v: 5.px, h: 0)

        CSSRule(Class.Portfoilo.footerItem.parent(A.pointer))
            .custom("target", "_blank")
            .color(.Portfoilo.gray)
    }
}

extension Class {
    struct Portfoilo {
        static let appWrapper: Class = "AppWrapper"
        static let appContainer: Class = "AppContainer"
        static let appItemContainer: Class = "AppItemContainer"
        static let appIcon: Class = "AppIcon"
        static let appIconImage: Class = "AppIconImage"
        static let projectHeader: Class = "ProjectHeader"
        static let projectBanner: Class = "ProjectBanner"
        static let projectTitle: Class = "ProjectTitle"
        static let textDivider: Class = "TextDivider"
        static let footer: Class = "PortfoiloFooter"
        static let footerItem: Class = "PortfoiloFooterItem"
    }
}

extension Color {
    struct Portfoilo {
        static let gray = Color(.init("#A6A6A6"))
    }
}
