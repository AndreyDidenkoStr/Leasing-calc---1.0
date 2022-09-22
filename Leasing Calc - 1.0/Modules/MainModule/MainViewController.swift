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
        return view
    }()
    
    var button: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.setTitle("Расcчитать", for: .normal)
        button.tintColor = .black
        button.backgroundColor = UIColor(red: 0.185, green: 0.411, blue: 0.235, alpha: 0.5)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    var orderButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.setTitle("Получить предложения", for: .normal)
        button.tintColor = .black
        button.backgroundColor = UIColor(red: 0.185, green: 0.411, blue: 0.235, alpha: 0.5)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTappedOrder), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(viewOne)
        view.addSubview(button)
        viewTwo.addSubview(orderButton)
        view.addSubview(viewTwo)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        NSLayoutConstraint.activate([
            viewOne.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viewOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            viewOne.heightAnchor.constraint(equalToConstant: 325),
            viewOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: viewOne.bottomAnchor,constant: 10),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            button.heightAnchor.constraint(equalToConstant: 40),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        ])
        
        NSLayoutConstraint.activate([
            orderButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85),
            orderButton.heightAnchor.constraint(equalToConstant: 40),
            orderButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -85),
            orderButton.bottomAnchor.constraint(equalTo: viewTwo.bottomAnchor, constant: -25)
        ])
        
        NSLayoutConstraint.activate([
            viewTwo.topAnchor.constraint(equalTo: button.bottomAnchor,constant: 10),
            viewTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            viewTwo.heightAnchor.constraint(equalToConstant: 325),
            viewTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5)
        ])
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc func buttonTappedOrder(sender: UIButton) {
        print("ORDER")
    }
    
    @objc func buttonTapped(sender: UIButton) {
        view.endEditing(true)
        lazy var formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale.current
        formatter.maximumFractionDigits = 0
        formatter.groupingSeparator = " "
        
        print("button pressed")
        
        let element = CalculationModel(id: nil,
                                       price: viewOne.priceTextField.text ?? "",
                                       prepayment: viewOne.prepaymentTextFieldValue.text ?? "",
                                       term: viewOne.termTextField.text ?? "",
                                       percent: viewOne.percentTextField.text ?? "")
        
        
        print(element)
        guard let numberWithoutGroupingSeparator = formatter.number(from: element.fullPriceContract) else { return }
        let formattedTextOne = formatter.string(from: numberWithoutGroupingSeparator)
        viewTwo.fullPriceLabel.text = "\(formattedTextOne ?? "nil") ₽"
        
        guard let numberWithoutGroupingSeparator = formatter.number(from: element.monthPayment) else { return }
        let formattedText = formatter.string(from: numberWithoutGroupingSeparator)
        viewTwo.monthPaymentLabel.text = "\(formattedText ?? "nil") ₽"
        
        guard let numberWithoutGroupingSeparator = formatter.number(from: element.fullNDS) else { return }
        let formattedTextSecond = formatter.string(from: numberWithoutGroupingSeparator)
        viewTwo.fullNdsLabel.text = "\(formattedTextSecond ?? "nil") ₽"
        
        guard let numberWithoutGroupingSeparator = formatter.number(from: element.monthNDS) else { return }
        let formattedTextFour = formatter.string(from: numberWithoutGroupingSeparator)
        viewTwo.fullIncomeTaxLabel.text = "\(formattedTextFour ?? "nil") ₽"
    }
}


extension MainViewController: MainViewInput {
     
}
