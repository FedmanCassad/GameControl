//
//  AppDelegate.swift
//  GameControl
//
//  Created by Vladimir Banushkin on 16.11.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let vc = InGameViewController()
    window?.rootViewController = vc
    window?.makeKeyAndVisible()
    return true
  }

  // MARK: UISceneSession Lifecycle

  
}

