import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let mapViewController = MapViewController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        let navigationController = UINavigationController(rootViewController: mapViewController)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let window else { return false }
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        mapViewController.applicationDidBecomeActive()
    }
}
