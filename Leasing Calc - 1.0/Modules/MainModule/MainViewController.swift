//
//  MainViewController.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 13.09.2022.
//

import UIKit

class MainViewController: UIViewController, ModuleTransitionable {

    var presenter: MainPresenter?
    
    var viewOne: InfoElementView = {
        let view = InfoElementView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(viewOne)
        
        NSLayoutConstraint.activate([
            viewOne.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viewOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            viewOne.heightAnchor.constraint(equalToConstant: 280),
            viewOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5)
        ])
    }

}


extension MainViewController: MainViewInput {
     
}
