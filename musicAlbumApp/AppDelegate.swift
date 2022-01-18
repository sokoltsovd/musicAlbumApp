//
//  AppDelegate.swift
//  musicAlbumApp
//
//  Created by Dmitry Sokoltsov on 03.01.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = AuthViewController()
        window?.makeKeyAndVisible()
        
        try! FileManager.default.removeItem(atPath: NSHomeDirectory()+"/Library/SplashBoard")
        do {sleep(2)}

        
        return true
    }
    
    
    
}

