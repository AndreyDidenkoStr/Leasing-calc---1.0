//
//  TabBarController.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 12.08.2022.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private enum TabBarItem: Int {
        case calc
        case detail
        case order
        
        var title: String {
            switch self {
            case .calc:
                return "Расчет"
            case .detail:
                return "Детали"
            case .order:
                return "Заказ"
            }
        }
        
        var iconName: String {
            switch self {
            case .calc:
                return "chart.bar.doc.horizontal"
            case .detail:
                return "dollarsign.circle"
            case .order:
                return "car.2.fill"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupTabBarVisual()
    }
    
    func setupTabBarVisual() {
        tabBar.unselectedItemTintColor = UIColor(red: 65.0/255.0, green: 76.0/255.0, blue: 81.0/255.0, alpha: 0.4)
        tabBar.backgroundColor = UIColor(red: 65.0/255.0, green: 76.0/255.0, blue: 81.0/255.0, alpha: 0.5)
        
        tabBar.tintColor = .white
    }
    
    func setupTabBar() {
        let dataSource: [TabBarItem] = [.calc, .detail, .order]
        viewControllers = dataSource.map {
            switch $0 {
            case .calc:
                let vc = CalcViewController()
                return self.wrappedInNavigationController(with: vc, title: $0.title)
            case .detail:
                let vc = DetailViewController()
                return self.wrappedInNavigationController(with: vc, title: $0.title)
            case .order:
                let vc = OrderViewController()
                return self.wrappedInNavigationController(with: vc, title: $0.title)
            }
        }
        viewControllers?.enumerated().forEach {
            $1.tabBarItem.title = dataSource[$0].title
            $1.tabBarItem.image = UIImage(systemName: dataSource[$0].iconName)
            $1.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: .zero, bottom: -5, right: .zero)
        }
    }
    
    private func wrappedInNavigationController(with: UIViewController, title: Any?) -> UINavigationController {
            return UINavigationController(rootViewController: with)
        }
}


