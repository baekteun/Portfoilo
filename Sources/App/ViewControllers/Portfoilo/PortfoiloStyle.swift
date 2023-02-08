import Web

final class PortfoiloStyle: Stylesheet {
    required init() { super.init() }

    @Rules
    override var rules: Stylesheet.RuleItems {
        CSSRule(Body.pointer)
            .margin(all: 0.px)
            .padding(all: 0.px)
    }
}
