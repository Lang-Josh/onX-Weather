import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let mapViewController = MapViewController()
        let navigationController = UINavigationController(rootViewController: mapViewController)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let window else { return false }
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return true
    }
}
