/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Contains the application's delegate.
*/

import UIKit
import Firebase
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        FirebaseApp.configure()
        return true
    }
}
