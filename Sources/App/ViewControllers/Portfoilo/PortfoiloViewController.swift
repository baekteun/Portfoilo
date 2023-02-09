import Web

final class PortfoiloViewController: ViewController {
    private var value: JSValue?
    @State var dateString = "00:00"
    @State var isCollapsed = false

    @DOM override var body: DOM.Content {
        PortfoiloStyle()
        dynamicIslandContentActive().disabled(self.$isCollapsed.map { !$0 })
        dynamicIslandContentInActive().disabled(self.$isCollapsed)
        dynamicIslandButtonActive().disabled(self.$isCollapsed.map { !$0 })
        dynamicIslandButtonInActive().disabled(self.$isCollapsed)

        Div {
            Div {
                Div {
                    Div {
                        P(self.$dateString)
                            .color(.white)
                            .fontSize(.large)
                            .fontWeight(.init("500"))
                            .textAlign(.right)
                            .marginLeft(8.px)

                        Div {
                            Div {
                                Div {
                                    Div {
                                        Div {
                                            Img()
                                                .src("https://avatars.githubusercontent.com/u/74440939?v=4")
                                                .class([.Portfoilo.profileImage])
                                        }
                                        .class([.Portfoilo.dynamicIslandProfile])

                                        Div {
                                            P("Mobile")
                                                .fontSize(0.875.rem)
                                                .margin(all: 0)
                                                .color(r: 107, g: 114, b: 128)

                                            H2("baegteun")
                                                .marginTop(0)
                                                .color(.white)
                                                .whiteSpace(.nowrap)
                                        }
                                        .class([.Portfoilo.dynamicIslandName])

                                        Div {
                                            Img()
                                                .srcSet("images/phone.down.fill.svg")
                                                .filter(.init("invert(99%) sepia(5%) saturate(21%) hue-rotate(205deg) brightness(103%) contrast(105%)"))
                                                .verticalAlign(.middle)
                                                .custom("margin", "auto")
                                        }
                                        .background(.init("#FF3B30"))
                                        .class([.Portfoilo.dynamicIslandIcon])

                                        Div {
                                            Img()
                                                .srcSet("images/phone.fill.svg")
                                                .filter(.init("invert(99%) sepia(5%) saturate(21%) hue-rotate(205deg) brightness(103%) contrast(105%)"))
                                                .verticalAlign(.middle)
                                                .custom("margin", "auto")
                                        }
                                        .background(.init("#34C759"))
                                        .class([.Portfoilo.dynamicIslandIcon])
                                    }
                                    .class([.Portfoilo.dynamicIslandContent])
                                }
                                .onClick {
                                    self.isCollapsed = !self.isCollapsed
                                }
                                .class([.Portfoilo.dynamicIsland])
                            }
                            .class([.Portfoilo.dynamicIslandHidden])
                        }
                        .class([.Portfoilo.dynamicIslandContainer])

                        Div {
                            Div {
                                Img()
                                    .srcSet("images/statusBar/cellularbars.svg")
                                    .filter(.init("invert(99%) sepia(5%) saturate(21%) hue-rotate(205deg) brightness(103%) contrast(105%)"))
                                    .width(28.px)
                                    .height(24.px)

                                Img()
                                    .srcSet("images/statusBar/wifi.svg")
                                    .filter(.init("invert(99%) sepia(5%) saturate(21%) hue-rotate(205deg) brightness(103%) contrast(105%)"))
                                    .width(24.px)
                                    .height(24.px)
                                    .padding(v: 0, h: 8.px)

                                Img()
                                    .srcSet("images/statusBar/battery.75.svg")
                                    .filter(.init("invert(99%) sepia(5%) saturate(21%) hue-rotate(205deg) brightness(103%) contrast(105%)"))
                                    .width(32.px)
                                    .height(32.px)
                            }
                            .display(.flex)
                            .alignItems(.center)
                            .height(16.px)
                            .transform(.scale(0.8, 0.8))
                            .transformOrigin(.init("right center"))
                        }
                        .marginRight(-5.75.px)
                        .custom("width", "fit-content")
                        .display(.flex)
                    }
                    .class([.Portfoilo.statusBar])
                    .zIndex(1)
                }
                .class([.Portfoilo.deviceScreen])

                Div().class([.Portfoilo.iPhoneCamera])

                Div().class([.Portfoilo.iPhoneButton])

                Div().class([.Portfoilo.iPhonePower])
            }
            .class(.Portfoilo.iPhone14Pro)
        }
        .class([.Portfoilo.deviceFrame, .Portfoilo.phone, .Portfoilo.device])
        .float(.right)
        .right(20.px)
    }

    override func buildUI() {
        super.buildUI()
        title = "baegteun's Portfoilo"
        self.value = JSObject.global.setInterval.function!(JSClosure({ _ in
            let date = JSDate()
            let hour = String(format: "%02d", date.hours)
            let min = String(format: "%02d", date.minutes)
            self.dateString = "\(hour):\(min)"
            return .undefined
        }), 1000)
    }

    func dynamicIslandContentInActive() -> Stylesheet {
        Stylesheet {
            CSSRule(Class.Portfoilo.dynamicIslandContent)
                .opacity(0)
                .pointerEvents(.none)
                .display(.flex)
                .custom("transform", "scale(0.9) translateZ(0px)")
                .height(100.percent)
        }
    }

    func dynamicIslandContentActive() -> Stylesheet {
        Stylesheet {
            CSSRule(Class.Portfoilo.dynamicIslandContent)
                .opacity(1)
                .pointerEvents(.none)
                .display(.flex)
                .custom("transform", "scale(0.9) translateZ(0px)")
                .height(100.percent)
        }
    }

    func dynamicIslandButtonInActive() -> Stylesheet {
        Stylesheet {
            CSSRule(Class.Portfoilo.dynamicIsland)
                .margin(v: 0, h: .auto)
                .outlineWidth(0)
                .width(120.px)
                .height(35.px)
                .borderRadius(all: .length(22.px))
                .backgroundColor(.black)
                .transitionDuration(.seconds(0.3))
                .transitionTimingFunction(.cubicBezier(0.4, 0, 0.2, 1))
        }
    }

    func dynamicIslandButtonActive() -> Stylesheet {
        Stylesheet {
            CSSRule(Class.Portfoilo.dynamicIsland)
                .margin(v: 0, h: .auto)
                .outlineWidth(0)
                .width(371.px)
                .height(84.px)
                .borderRadius(all: .length(42.px))
                .backgroundColor(.black)
                .transitionDuration(.seconds(0.3))
                .transitionTimingFunction(.cubicBezier(0.4, 0, 0.2, 1))
        }
    }
}
