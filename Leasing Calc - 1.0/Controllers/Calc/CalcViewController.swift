//
//  CalculatorViewController.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 12.08.2022.
//

import UIKit

class CalcViewController: UIViewController {
    
    
    var customView = CalcComponentView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllerDesign()
        
        view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customView.heightAnchor.constraint(equalToConstant: 200),
            customView.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        customView.nameLabel.text = "NAME LABEL"
    }
    
    private func setupViewControllerDesign() {
        view.backgroundColor = .white
    }
}
