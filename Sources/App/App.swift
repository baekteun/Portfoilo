import Web

public class App: WebApp {
    @AppBuilder
    public override var app: AppBuilder.Content {
        Routes {
            Page("**") { PortfoiloViewController() }
            Page { PortfoiloViewController() }
        }
    }
}
