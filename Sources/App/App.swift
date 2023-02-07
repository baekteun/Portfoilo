import Web

public class App: WebApp {
    @AppBuilder public override var app: AppBuilder.Content {
        Lifecycle.didFinishLaunching {
            print("Lifecycle.didFinishLaunching")
        }.willTerminate {
            print("Lifecycle.willTerminate")
        }.willResignActive {
            print("Lifecycle.willResignActive")
        }.didBecomeActive {
            print("Lifecycle.didBecomeActive")
        }.didEnterBackground {
            print("Lifecycle.didEnterBackground")
        }.willEnterForeground {
            print("Lifecycle.willEnterForeground")
        }
        Routes {
            Page("**") { NotFoundViewController() }
            Page("project") { ProjectListViewController() }
        }
    }
}

extension Id {
    
}

extension Class {
    
}
