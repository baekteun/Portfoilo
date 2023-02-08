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
            .zIndex(1)

        CSSRule(Class.Portfoilo.deviceFrame)
            .boxShadow([
                BoxShadowValue(h: 0, v: 0, blur: 4.px, spread: 2.px, color: .init(.custom("#C0B8CD")), inset: true),
                BoxShadowValue(h: 0, v: 0, blur: 0, spread: 6.px, color: .init(.custom("#342c3f")), inset: true)
            ])
            .height(868.px)
            .width(428.px)
            .backgroundColor(.init(.custom("#010101")))
            .borderRadius(all: .length(68.px))
            .padding(all: 19.px)
            .zIndex(1)

        CSSRule(Class.Portfoilo.phone)
            .borderRadius(all: 68.px)
            .transition([.all], duration: .seconds(0.2), timingFunction: .ease)
            .animationName("move")
            .animationDuration(1.s)

        Keyframes("move")
            .from {
                Top(-434.px)
                Transform(.scale(0, 0))
            }
            .to {
                Top(0)
                Transform(.scale(1, 1))
            }

        CSSRule(Class.Portfoilo.iPhone14Pro)
            .height(868.px)
            .width(428.px)
            

        CSSRule(Class.Portfoilo.deviceFrame)
            .position(.relative)
            .transform(.scale(1, 1))

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

        CSSRule(
            Class.Portfoilo.iPhoneButton,
            Class.Portfoilo.iPhoneButton.before,
            Class.Portfoilo.iPhoneButton.after,
            Class.Portfoilo.iPhonePower
        )
        .transition([.init("background")], duration: .seconds(2))
        .transitionTimingFunction(.ease)
    }
}

extension Class {
    struct Portfoilo {
        static let phone: Class = "Phone"
        static let device: Class = "Device"
        static let deviceFrame: Class = "DeviceFrame"
        static let iPhone14Pro: Class = "iPhone14Pro"
        static let iPhoneButton: Class = "iPhoneButton"
        static let iPhonePower: Class = "iPhonePower"
    }
}
