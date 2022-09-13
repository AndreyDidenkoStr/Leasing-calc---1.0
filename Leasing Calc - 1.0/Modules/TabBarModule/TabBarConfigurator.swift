//
//  TabBarConfigurator.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 13.09.2022.
//

import Foundation
import UIKit

struct TabBarConfigurator {
    
    private var allTabBar: [TabBarModel] = [.main, .list, .order]
    
    func configure() -> UITabBarController {
        return getTabBarController()
    }
}

extension TabBarConfigurator {
    
    func getTabBarController() -> UITabBarController {
        
        let tabBarController = UITabBarController()
        tabBarController.tabBar.tintColor = .black
        tabBarController.tabBar.unselectedItemTintColor = .lightGray
        tabBarController.tabBar.backgroundColor = .white
        tabBarController.viewControllers = getControllers()
        return tabBarController
    }
    
    func getControllers() -> [UIViewController] {
        var viewControllers = [UIViewController]()
        
        allTabBar.forEach { tabBar in
            let viewController = getCurrentController(tabBar: tabBar)
            let navigationController = UINavigationController(rootViewController: viewController)
            let tabBarItem = UITabBarItem(title: tabBar.title, image: tabBar.image, selectedImage: tabBar.image)
            viewController.tabBarItem = tabBarItem
            viewController.title = tabBar.title
            viewControllers.append(navigationController)
        }
        
        return viewControllers
    }
        
        func getCurrentController(tabBar: TabBarModel) -> UIViewController {
            switch tabBar {

            case .main:
                return MainModuleConfigurator().configure()
            case .list:
                return ListModuleConfigurator().configure()
            case .order:
                return MainModuleConfigurator().configure()
            }
        }
    
}
