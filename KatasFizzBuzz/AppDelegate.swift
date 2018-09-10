//
//  AppDelegate.swift
//  KatasFizzBuzz
//
//  Created by Achraf TRABELSI on 10/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Test methods
        let fizzBuzz = FizzBuzz()
        print("Methode 1 : \(fizzBuzz.handle(45))")
        print("Methode 2 (generic) : \(fizzBuzz.genericHandle(45))")
        
        return true
    }
}

