import Web

final class PortfoiloViewController: ViewController {
    private var value: JSValue?
    @State var dateString = "00:00"

    @DOM override var body: DOM.Content {
        PortfoiloStyle()
        Div {
            Div {
                Div {
                    Div {
                        P(self._dateString)
                            .color(.white)
                            .fontSize(.large)
                            .fontWeight(.bold)
                    }
                    .class([.Portfoilo.statusBar])
                    .zIndex(1)
                }
                .class([.Portfoilo.deviceScreen])

                Div().class([.Portfoilo.iPhoneButton])

                Div().class([.Portfoilo.iPhonePower])
            }
            .class(.Portfoilo.iPhone14Pro)
        }
        .class(.Portfoilo.deviceFrame, .Portfoilo.phone, .Portfoilo.device)
        .left(30.px)
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
}
