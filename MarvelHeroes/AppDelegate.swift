//
//  AppDelegate.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 06/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        AppConfig.verifyAPIKeysSetUp()
        return true
    }

}

