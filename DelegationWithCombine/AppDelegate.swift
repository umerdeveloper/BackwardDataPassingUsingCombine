//
//  AppDelegate.swift
//  DelegationWithCombine
//
//  Created by Umer Khan on 03/10/2020.
//  Copyright © 2020 Umer Khan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ParentViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

