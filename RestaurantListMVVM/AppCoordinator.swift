//
//  AppCoordinator.swift
//  RestaurantListMVVM
//
//  Created by eslam dweeb on 9/16/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit

class AppCoordinator{
    
    private let window:UIWindow
    
    init(window:UIWindow) {
        self.window = window
    }
    
    func start(){
        let viewController = MainVC()
        window.rootViewController = UINavigationController(rootViewController: viewController)
        window.makeKeyAndVisible()
    }
}
