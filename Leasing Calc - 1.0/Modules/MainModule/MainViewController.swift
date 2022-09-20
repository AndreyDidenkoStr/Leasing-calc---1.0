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
    
    var viewTwo: ResultElemetView = {
        let view = ResultElemetView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.isHidden = true
        return view
    }()
    
    var button: UIButton = {
        let button = UIButton()
        button.title(for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(viewOne)
        view.addSubview(button)
        view.addSubview(viewTwo)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
        
        NSLayoutConstraint.activate([
            viewOne.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viewOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            viewOne.heightAnchor.constraint(equalToConstant: 340),
            viewOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: viewOne.bottomAnchor,constant: 10),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            button.heightAnchor.constraint(equalToConstant: 40),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            viewTwo.topAnchor.constraint(equalTo: button.bottomAnchor,constant: 10),
            viewTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            viewTwo.heightAnchor.constraint(equalToConstant: 100),
            viewTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5)
        ])
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    @objc func buttonTapped(sender: UIButton) {
        let element = CalculationModel(price: viewOne.priceTextField.text ?? "", prepayment: viewOne.prepaymentTextFieldValue.text ?? "", term: viewOne.termTextField.text ?? "", percent: viewOne.percentTextField.text ?? "")
        print(element)
        
        let fullPrice = element.fullPriceContract
        let monthPay = element.monthPayment
        
        viewTwo.fullPriceLabel.text = fullPrice
        viewTwo.monthPayLabel.text = monthPay
        
        print(element.listOfPayment)
    }
}


extension MainViewController: MainViewInput {
     
}
