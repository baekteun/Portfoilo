import Web

final class PortfoiloViewController: ViewController {
    private var value: JSValue?
    @State var dateString = "00:00"
    @State var isCollapsed = false
    @State var dynamicIslandDisplay = DynamicIslandDisplayStyle.default
    @State var isFocusedPhone = false

    @DOM override var body: DOM.Content {
        Div {
            Div {
                self.introduceView()

                ForEach(Project.liveValue) { project in
                    self.projectView(project: project)
                }
            }
            .class([.Portfoilo.aboutContainer])

            Div {
                Div {
                    Div {
                        Div {
                            self.statusBar()

                            self.appContainer()

                            self.dockBar()
                        }
                        .class([.Portfoilo.deviceScreen])

                        Div().class([.Portfoilo.iPhoneCamera])

                        Div().class([.Portfoilo.iPhoneButton])

                        Div().class([.Portfoilo.iPhonePower])
                    }
                    .class(.Portfoilo.iPhone14Pro)
                }
                .class([.Portfoilo.deviceFrame, .Portfoilo.phone, .Portfoilo.device])
                .onClick {
                    self.isFocusedPhone = !self.isFocusedPhone
                }
            }
            .class([.Portfoilo.phoneContainer])
        }
        .class([.Portfoilo.rootContainer])

        PortfoiloStyle()
        DynamicIslandStyle()
        IPhoneStyle()
        DockStyle()
        dynamicIslandActive().disabled($isCollapsed.map { !$0 })
        dynamicIslandInActive().disabled($isCollapsed)
        phoneFocusToggleStyleSheet()
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

    @DOM
    func introduceView() -> DOM.Content {
        Header {
            H1("수상할 정도로 다양한 경험을 지닌 📚 주니어 iOS 개발자 최형우입니다!")
                .color(.white)

            P("""
iOS 개발자가 되기로 결심한 이후로 (주) 로쏘의 성심당 사내 일정 관리 서비스 심통, 전국 기숙사 관리 시스템 서비스 DMS, 교내 동아리 관리 시스템 GCMS 등의 여러 프로젝트에서 iOS 개발 팀장을 맡고 실제로 출시 및 유지보수를 해보며 실무에 빠르게 적응할 수 있는 개발자가 되고자 하였습니다.

소프트웨어 개발은 개발을 마치는 것이 아니라 효율적으로 유지하고 보수하는 것이 중요하다고 생각합니다. 그렇기에 팀 내에서 Swift 스타일 가이드 작성과 문서화 업무의 담당, 클린코드 준수, 인프라 구축 등에 주도적으로 기여하였습니다.

10년 뒤에도 함께 일하고 싶은 동료 개발자로 성장하는 것이 목표입니다.

""")
            .color(.init(r: 153, g: 153, b: 153))
            .fontSize(.length(18.px))
            .lineHeight(1.45)
            .marginRight(20.px)
        }
        .display(.flex)
        .flexDirection(.column)
        .marginTop(5.percent)
    }

    @DOM
    func statusBar() -> DOM.Content {
        Div {
            P(self.$dateString)
                .color(.white)
                .fontSize(.large)
                .fontWeight(.init("500"))
                .textAlign(.right)
                .marginLeft(20.px)

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
                                P(self.$dynamicIslandDisplay.map { $0.subName })
                                    .fontSize(0.875.rem)
                                    .margin(all: 0)
                                    .color(r: 107, g: 114, b: 128)

                                H2(self.$dynamicIslandDisplay.map { $0.name })
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
                            .pointerEvents(.auto)
                            .onClick {
                                JSObject.global.window.open.function!(self.dynamicIslandDisplay.link)
                            }
                        }
                        .class([.Portfoilo.dynamicIslandContent])
                    }
                    .onClick {
                        self.dynamicIslandDisplay = .default
                        self.isCollapsed = !self.isCollapsed
                        $1.stopPropagation()
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

    @DOM
    func appContainer() -> DOM.Content {
        Div {
            Div {
                ForEach(appItems) { app in
                    Div {
                        Div {
                            Div()
                                .class([.Portfoilo.appIconImage])
                                .backgroundImage(app.imgPath)
                        }
                        .class([.Portfoilo.appIcon])
                        
                        Span(app.name)
                            .marginTop(6.848.px)
                            .fontSize(11.128.px)
                    }
                    .class([.Portfoilo.appItemContainer])
                    .onClick {
                        _ = JSObject.global.document.getElementById("\(app.id)").scrollIntoView()
                    }
                }
            }
            .class([.Portfoilo.appContainer])
        }
        .class([.Portfoilo.appWrapper])
    }

    @DOM
    func dockBar() -> DOM.Content {
        Div {
            Div {
                Div()
                    .width(8.px)
                    .height(8.px)
                    .borderRadius(all: 50.percent)
                    .backgroundColor(.init(.init("#ffffff80")))
            }
            .display(.flex)
            .alignItems(.center)
            .marginTop(45.px)
            .marginBottom(30.px)

            Div {
                Div().class([.Portfoilo.dockBlur])
                
                ForEach(dockItems) { dock in
                    Div {
                        Div()
                            .class([.Portfoilo.dockItemImage])
                            .backgroundImage(dock.imgPath)
                            .onClick {
                                $1.stopPropagation()
                                self.dynamicIslandDisplay = dock.dynamicIslandDisplay
                                self.isCollapsed = !self.isCollapsed
                            }
                    }
                    .class([.Portfoilo.dockItem])
                }
            }
            .class([.Portfoilo.dockContainer])
        }
        .class([.Portfoilo.dockBar])
    }

    @DOM
    func projectView(project: Project) -> DOM.Content {
        Hr()
            .margin(v: 5.percent, h: 0)

        Div {
            Div {
                Img()
                    .src(project.bannerURL)
                    .class([.Portfoilo.projectBanner])

                Div {
                    H1(project.name)
                        .color(.white)

                    if let fullName = project.fullName {
                        P("\(fullName)")
                            .color(.gray)
                            .fontStyle(.italic)
                    }

                    Div {
                        ForEach(project.links) { index, link in
                            A(link.name)
                                .color(.gray)
                                .href(link.url)
                                .target(.blank)
                            
                            if index != project.links.count - 1 {
                                Div()
                                    .class([.Portfoilo.textDivider])
                            }
                        }
                    }
                    .class([.Portfoilo.projectTitle])
                }
                .align(.left)
                .lineHeight(.length(5.px))
                .paddingLeft(30.px)
            }
            .class([.Portfoilo.projectHeader])
            .marginBottom(30.px)

            ProjectInfoView(project: project)
        }
        .id(Id(stringLiteral: project.id))
    }
}

// MARK: - StyleSheet
extension PortfoiloViewController {
    func dynamicIslandInActive() -> Stylesheet {
        Stylesheet {
            CSSRule(Class.Portfoilo.dynamicIsland)
                .width(120.px)
                .height(35.px)
                .borderRadius(all: .length(22.px))

            CSSRule(Class.Portfoilo.dynamicIsland.hover)
                .transform(.scale(1.1, 1.1))

            CSSRule(Class.Portfoilo.dynamicIslandContent)
                .opacity(0)
        }
    }

    func dynamicIslandActive() -> Stylesheet {
        Stylesheet {
            CSSRule(Class.Portfoilo.dynamicIsland)
                .width(371.px)
                .height(84.px)
                .borderRadius(all: .length(42.px))

            CSSRule(Class.Portfoilo.dynamicIsland.hover)
                .transform(.scale(1.0, 1.0))

            CSSRule(Class.Portfoilo.dynamicIslandContent)
                .opacity(1)
        }
    }

    @DOM
    func phoneFocusToggleStyleSheet() -> DOM.Content {
        Stylesheet {
            CSSRule(Class.Portfoilo.phoneContainer)
                .height(95.vh)

            MediaRule([.screen.maxWidth(1000.px)]) {
                CSSRule(Class.Portfoilo.iPhone14Pro)
                    .pointerEvents(.auto)

                CSSRule(Class.Portfoilo.phone)
                    .cursor(.auto)
            }
        }
        .disabled(self.$isFocusedPhone.map { !$0 })

        Stylesheet {
            CSSRule(Class.Portfoilo.phoneContainer)
                .height(150.px)

            MediaRule([.screen.maxWidth(1000.px)]) {
                CSSRule(Class.Portfoilo.iPhone14Pro)
                    .pointerEvents(.none)

                CSSRule(Class.Portfoilo.phone)
                    .cursor(.pointer)
            }
        }
        .disabled(self.$isFocusedPhone)
    }
}
