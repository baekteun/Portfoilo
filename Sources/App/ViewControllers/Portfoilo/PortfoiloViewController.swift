import Web

final class PortfoiloViewController: ViewController {
    @DOM override var body: DOM.Content {
        PortfoiloStyle()
        Div {
            Div {
                Div().class([.Portfoilo.deviceScreen])
                    .backgroundImage("https://user-images.githubusercontent.com/74440939/217517235-98eca9ea-9092-4e03-b54f-9b3f0771a780.jpeg")
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
    }
}
