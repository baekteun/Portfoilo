import Web

final class PortfoiloStyle: Stylesheet {
    required init() { super.init() }

    @Rules
    override var rules: Stylesheet.RuleItems {
        CSSRule(Body.pointer)
            .margin(all: 5.px)
            .padding(all: 5.px)
            .backgroundColor(.black)

        CSSRule(Class.Portfoilo.device)
            .position(.relative)
            .transform(.scale(1, 1))
            .transformOrigin(.value(x: .center, y: .top))
            .zIndex(1)

        CSSRule(Class.Portfoilo.phone)
            .transition([.all], duration: .seconds(0.2), timingFunction: .ease)
            .animationName("move")
            .animationDuration(1.s)

        CSSRule(Class.Portfoilo.deviceScreen)
            .display(.flex)
            .flexDirection(.column)
            .overflow(.hidden)
            .zIndex(0)
            .backgroundColor(r: 6, g: 6, b: 6, important: true)
            .backgroundRepeat(.noRepeat)
            .backgroundImage("https://user-images.githubusercontent.com/74440939/217517235-98eca9ea-9092-4e03-b54f-9b3f0771a780.jpeg")

        CSSRule(Class.Portfoilo.iPhone14Pro.inside(Class.Portfoilo.deviceScreen))
            .borderRadius(all: 49.px)
            .height(868.px)
            .width(405.px)

        CSSRule(Class.Portfoilo.device.inside(Class.Portfoilo.deviceScreen))
            .backgroundPosition(.axis(h: .percent(50), v: .center))
            .backgroundSize(all: .cover)
            .objectFit(.cover)
            .position(.relative)

        CSSRule(Class.Portfoilo.deviceFrame)
            .boxShadow([
                BoxShadowValue(h: 0, v: 0, blur: 4.px, spread: 2.px, color: .init(.custom("#C0B8CD")), inset: true),
                BoxShadowValue(h: 0, v: 0, blur: 0, spread: 6.px, color: .init(.custom("#342c3f")), inset: true)
            ])
            .height(868.px)
            .padding(all: 19.px)
            .width(405.px)
            .backgroundColor(.init(.custom("#010101")))
            .borderRadius(all: .length(68.px))
            .zIndex(1)

        CSSRule(Class.Portfoilo.iPhone14Pro)
            .height(868.px)
            .width(428.px)

        CSSRule(Class.Portfoilo.iPhoneButton)
            .backgroundColor(.init(.custom("#1b1721")))
            .borderRadius(all: .length(2.px))
            .height(32.px)
            .left(-2.px)
            .position(.absolute)
            .top(115.px)
            .width(3.px)

        CSSRule(Class.Portfoilo.iPhoneButton.before)
            .property(.content, "")
            .background(.init("#1b1721"))
            .borderRadius(all: .length(2.px))
            .height(62.px)
            .left(0.px)
            .position(.absolute)
            .width(3.px)
            .top(60.px)

        CSSRule(Class.Portfoilo.iPhoneButton.after)
            .property(.content, "")
            .background(.init("#1b1721"))
            .borderRadius(all: .length(2.px))
            .height(62.px)
            .left(0.px)
            .position(.absolute)
            .width(3.px)
            .top(140.px)

        CSSRule(Class.Portfoilo.iPhone14Pro.inside(Class.Portfoilo.iPhonePower))
            .background(.init("#1b1721"))
            .borderRadius(all: .length(2.px))
            .height(100.px)
            .position(.absolute)
            .right(-2.px)
            .top(200.px)
            .width(3.px)

        CSSRule(Class.Portfoilo.statusBar)
            .margin(v: 0, h: .auto)
            .height(35.px)
            .display(.flex)
            .justifyContent(.spaceBetween)
            .position(.absolute)
            .top(9.px)
            .left(5.percent)
            .right(5.percent)
            .width(333.px)

        CSSRule(
            Class.Portfoilo.iPhoneButton,
            Class.Portfoilo.iPhoneButton.before,
            Class.Portfoilo.iPhoneButton.after,
            Class.Portfoilo.iPhonePower
        )
        .transition([.init("background")], duration: .seconds(2))
        .transitionTimingFunction(.ease)

        // MARK: - Keyframes
        Keyframes("move")
            .from {
                Transform(.scale(0, 0))
            }
            .to {
                Transform(.scale(1, 1))
            }
    }
}

extension Class {
    struct Portfoilo {
        static let phone: Class = "Phone"
        static let device: Class = "Device"
        static let deviceScreen: Class = "DeviceScreen"
        static let deviceFrame: Class = "DeviceFrame"
        static let iPhone14Pro: Class = "iPhone14Pro"
        static let iPhoneButton: Class = "iPhoneButton"
        static let iPhonePower: Class = "iPhonePower"
        static let statusBar: Class = "StatusBar"
    }
}
