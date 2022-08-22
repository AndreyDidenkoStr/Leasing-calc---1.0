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
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            customView.heightAnchor.constraint(equalToConstant: 160)
        ])
        
        customView.priceTextField.placeholder = "100 000 000"
        customView.termTitlelabel.text = "СРОК ЛИЗИНГА, МЕСЯЦ"
        customView.termTextField.placeholder = "60"
        customView.priceTitleLabel.text = "ЦЕНА ТРАНСПОРТА, ₽"
    }
    
    private func setupViewControllerDesign() {
        view.backgroundColor = .black
    }
}
