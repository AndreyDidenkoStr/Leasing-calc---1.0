//
//  MainViewOutput.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 13.09.2022.
//

import Foundation

protocol MainViewOutput: AnyObject {
    var router: MainRouterInput? { get }
}
