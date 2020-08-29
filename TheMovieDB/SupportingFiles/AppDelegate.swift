//
//  AppDelegate.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 28.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController(rootViewController: ListViewController())
        self.window?.makeKeyAndVisible()
        
        return true
    }

    


}

