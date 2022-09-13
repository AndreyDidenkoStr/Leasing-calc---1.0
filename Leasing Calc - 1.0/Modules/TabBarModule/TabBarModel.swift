//
//  TabBarModel.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 04.09.2022.
//

import UIKit

enum TabBarModel {
    case main
    case list
    case order
    
    var title: String {
        switch self {
        case .main:
            return "Главная"
        case .list:
            return "Список"
        case .order:
            return "Заказы"
        }
    }
    
    var image: UIImage {
        switch self {
        case .main:
            return UIImage(systemName: "dollarsign.circle")!
        case .list:
            return UIImage(systemName: "list.bullet.rectangle.portrait")!
        case .order:
            return UIImage(systemName: "car.2")! 
        }
    }
}


