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
            .alignItems(.center)
            .position(.relative)
            .height(95.48.px)
            .borderRadius(all: .length(32.px))
            .padding(v: 19.24.px, h: 20.116.px)
            .width(94.6.percent)
            .justifyContent(.spaceBetween)
            .margin(top: 0, h: .auto, bottom: 16.px)
            .boxShadow(h: 0, v: 0, blur: 1.rem, spread: 0, color: .init(.init("#0003")))
            .zIndex(1)
            .custom("background", "inherit")
            .overflow(.hidden)

        CSSRule(Class.Portfoilo.dockBlur)
            .backgroundImage("https://user-images.githubusercontent.com/74440939/217517235-98eca9ea-9092-4e03-b54f-9b3f0771a780.jpeg")
            .position(.absolute)
            .custom("background", "inherit")
            .opacity(1)
            .custom("background-position-y", "bottom")
            .zIndex(-1)
            .top(0)
            .bottom(0)
            .left(0)
            .right(0)
            .boxShadow(h: 0, v: 0, blur: 2000.px, spread: 0, color: .init(.init("#ffffff80")))
            .filter(.blur(18))
            .margin(all: -20.px)
            .backgroundSize(all: .cover)

        CSSRule(Class.Portfoilo.dockItem)
            .position(.relative)
            .zIndex(0)
            .transition([.all], duration: .seconds(0.45), timingFunction: .linear)

        CSSRule(Class.Portfoilo.dockItem.inside(Img.pointer))
            .width(66.px)
            .height(66.px)
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
