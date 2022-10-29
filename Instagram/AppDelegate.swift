//
//  AppDelegate.swift
//  Instagram
//
//  Created by Diego Rivas Lazala on 10/14/22.
//

import UIKit
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let parseConfig = ParseClientConfiguration {
            //OG instagram ones (Diego) apId: MkwiaYtInV8t4nJqGZKxjvPbO46ebCwXeWU8nYwf
            //OG ClientKey (Diego):nrl3HGSpoqF9zCd35Aup7NTsFXl6UOmfpnEmYpsC
              $0.applicationId = "a0dYpFSUr1ML9OKAmY2XVIYCQ6piVuWATQNzJXkf"
              $0.clientKey = "Q6cQSTRXUBqtFFqP7FhbtnH3b23c1kGwKwNF8LZt"
              $0.server = "https://parseapi.back4app.com"
          }
          Parse.initialize(with: parseConfig)
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

