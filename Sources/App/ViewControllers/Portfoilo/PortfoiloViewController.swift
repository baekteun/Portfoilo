import Web

final class PortfoiloViewController: ViewController {
    @DOM override var body: DOM.Content {
        Div {
            P("PORTFOILO")
        }
    }

    override func buildUI() {
        super.buildUI()
        title = "baegteun's Portfoilo"
    }
}
