import Web

final class PortfoiloStyle: Stylesheet {
    required init() { super.init() }

    @Rules
    override var rules: Stylesheet.RuleItems {
        CSSRule(Body.pointer)
            .margin(all: 5.px)
            .padding(all: 5.px)
            .backgroundColor(.black)

        CSSRule(Class.Portfoilo.dockBar)
            .display(.flex)
            .alignItems(.center)
            .position(.relative)
            .width(100.percent)
            .flexDirection(.column)
            .bottom(0)
            .left(0)
            .right(0)

        CSSRule(Class.Portfoilo.dockContainer)
            .display(.flex)
            .height(76.48.px)
            .borderRadius(all: .length(32.px))
            .padding(v: 19.24.px, h: 20.116.px)
            .alignItems(.center)
            .justifyContent(.spaceBetween)
            .margin(top: 0, h: .auto, bottom: 16.px)
            .boxShadow(h: 0, v: 0, blur: 1.rem, spread: 0, color: .init(.init("#0003")))
            .zIndex(1)
            .custom("background", "inherit")
            .overflow(.hidden)
            .width(82.6.percent)
            .position(.relative)

        CSSRule(Class.Portfoilo.dockBlur)
            .position(.absolute)
            .opacity(1)
            .custom("background", "inherit")
            .custom("background-position-y", "bottom")
            .backgroundSize(all: .cover)
            .top(0)
            .left(0)
            .right(0)
            .bottom(0)
            .zIndex(-1)
            .boxShadow(h: 0, v: 0, blur: 2000.px, spread: 0, color: .init(.init("#ffffff80")), inset: true)
            .filter(.blur(18))
            .margin(all: -20.px)

        CSSRule(Class.Portfoilo.dockItem)
            .position(.relative)
            .width(66.px)
            .height(66.px)
            .zIndex(0)
            .transition([.all], duration: .seconds(0.45), timingFunction: .linear)
            .cursor(.pointer)
            .display(.flex)
            .justifyContent(.center)
            .alignItems(.center)
            .overflow(.hidden)

        CSSRule(Class.Portfoilo.dockItem.inside(Img.pointer))
            .width(66.px)
            .height(66.px)
            .borderRadius(all: .length(16.px))

        CSSRule(Class.Portfoilo.dockItem.after)
            .property(.content, "")
            .background(color: .init(r: 0, g: 0, b: 0, a: 0.2))
            .position(.absolute)
            .width(100.percent)
            .height(100.percent)
            .borderRadius(all: .length(16.px))
            .overflow(.hidden)
            .zIndex(1)
            .opacity(0)

        CSSRule(Class.Portfoilo.dockItem.hover.after)
            .opacity(1)
    }
}

extension Class {
    struct Portfoilo {
        static let dockBar: Class = "DockBar"
        static let dockContainer: Class = "DockContainer"
        static let dockBlur: Class = "DockBlur"
        static let dockItem: Class = "DockItem"
    }
}
