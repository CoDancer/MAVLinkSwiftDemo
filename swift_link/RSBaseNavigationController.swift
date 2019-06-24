//
//  RSBaseNavigationController.swift
//  BluetoothCase
//
//  Created by CoDancer on 2018/8/22.
//  Copyright © 2018年 IOS. All rights reserved.
//  APP全屏手势返回需要继承的NavigationController

import UIKit

class RSBaseNavigationController: UINavigationController, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.openFullScreenGes()
    }
    
    func openFullScreenGes() -> Void {
        
        let target = self.interactivePopGestureRecognizer?.delegate
        let handler = NSSelectorFromString("handleNavigationTransition:")
        
        let targetView = self.interactivePopGestureRecognizer?.view
        
        let fullScreenGes = UIPanGestureRecognizer.init(target: target, action: handler)
        fullScreenGes.delegate = self
        targetView?.addGestureRecognizer(fullScreenGes)
        
        self.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        return true
    }
}
