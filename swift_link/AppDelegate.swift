//
//  AppDelegate.swift
//  swift_link
//
//  Created by CoDancer on 2019/6/18.
//  Copyright © 2019 IOS. All rights reserved.
//

import UIKit
import Dronecode_SDK_Swift
import RxBlocking
import RxSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        configRootController()
        
        let drone = Drone.init(address: "", port: 8090)
        drone.action.arm()
            .andThen(drone.action.takeoff())
            .subscribe(onCompleted: {
                print("123")
            }) { (error) in
                print(error)
        }
        .dispose()
        
        return true
    }
    
    func configRootController() -> Void {
        
        if #available(iOS 11.0, *) {
            UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
        }
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window = UIWindow.init(frame: MAINSCREEN)
        appDelegate.window?.backgroundColor = UIColor.white
        
        appDelegate.window?.rootViewController = RSBaseNavigationController.init(rootViewController: ViewController())
        appDelegate.window?.makeKeyAndVisible()
    }

}
