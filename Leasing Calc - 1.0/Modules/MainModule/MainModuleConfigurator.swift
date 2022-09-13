//
//  MainModuleConfigurator.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 13.09.2022.
//

import Foundation

struct MainModuleConfigurator {
    
    func configure() -> MainViewController {
        let view = MainViewController()
        let presenter = MainPresenter()
        let router = MainRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        router.view = view
        
        return view
    }
}
