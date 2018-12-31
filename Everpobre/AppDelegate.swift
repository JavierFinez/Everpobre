//
//  AppDelegate.swift
//  Everpobre
//
//  Created by Javier Finez de Dios on 16/12/18.
//  Copyright © 2018 Javier Finez de Dios. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    lazy var coreDataStack = CoreDataStack(modelName: "Everpobre")


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        guard
            let navController = window?.rootViewController as? UINavigationController,
            let viewController = navController.topViewController as? NotebookListViewController
            else { return true }
        
        // Inyectar core data stack al VC
        viewController.managedContext = coreDataStack.managedContext
        
        return true
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        coreDataStack.saveContext()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        coreDataStack.saveContext()
    }


}

