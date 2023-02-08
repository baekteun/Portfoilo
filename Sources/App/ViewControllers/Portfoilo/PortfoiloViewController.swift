import Web

final class PortfoiloViewController: ViewController {
    @DOM override var body: DOM.Content {
        PortfoiloStyle()
        Div {
            Div {
                Div().class([.Portfoilo.iPhoneButton])
                Div().class([.Portfoilo.iPhonePower])
            }
            .class(.Portfoilo.iPhone14Pro)
        }
        .class(.Portfoilo.deviceFrame, .Portfoilo.phone)
        .left(30.px)
    }

    override func buildUI() {
        super.buildUI()
        title = "baegteun's Portfoilo"
    }
}
