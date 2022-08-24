//
//  CalculatorViewController.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 12.08.2022.
//

import UIKit

class CalcViewController: UIViewController {
    
    let calcView: CalcComponentView = {
        let customView = CalcComponentView()
        customView.priceTextField.text = "100 000 000"
        customView.termTitlelabel.text = "СРОК ЛИЗИНГА, МЕСЯЦ"
        customView.termTextField.text = "60"
        customView.priceTitleLabel.text = "ЦЕНА ТРАНСПОРТА, ₽"
        customView.translatesAutoresizingMaskIntoConstraints = false
        return customView
    }()
    
    let summResultView: ResultComponentView = {
        let resultView = ResultComponentView()
        resultView.titleLabel.text = "ИТОГОВАЯ СУММА КОНТРАКТА, ₽"
        resultView.resultLabel.text = "10 000 000"
        resultView.translatesAutoresizingMaskIntoConstraints = false
        return resultView
    }()
    
    let monthResultView: ResultComponentView = {
        let resultView = ResultComponentView()
        resultView.titleLabel.text = "ЕЖЕМЕСЯЧНЫЙ ПЛАТЕЖ, ₽"
        resultView.resultLabel.text = "200 000"
        resultView.translatesAutoresizingMaskIntoConstraints = false
        return resultView
    }()
    
    let nameAccountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 28)
        label.text = "ООО \("АТЭК ЭНЕРГО")"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllerDesign()
        
        view.addSubview(nameAccountLabel)
        view.addSubview(calcView)
        view.addSubview(summResultView)
        view.addSubview(monthResultView)
        setupConstraints()
        
        
    }
    
    private func setupViewControllerDesign() {
        view.backgroundColor = .black
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nameAccountLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            nameAccountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameAccountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            nameAccountLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            calcView.topAnchor.constraint(equalTo: nameAccountLabel.bottomAnchor, constant: 10),
            calcView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            calcView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            calcView.heightAnchor.constraint(equalToConstant: 160)
        ])
        
        NSLayoutConstraint.activate([
            summResultView.topAnchor.constraint(equalTo: calcView.bottomAnchor, constant: 20),
            summResultView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            summResultView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            summResultView.heightAnchor.constraint(equalToConstant: 90)
        ])
        
        NSLayoutConstraint.activate([
            monthResultView.topAnchor.constraint(equalTo: summResultView.bottomAnchor, constant: 20),
            monthResultView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            monthResultView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            monthResultView.heightAnchor.constraint(equalToConstant: 90)
        ])
    }
}
