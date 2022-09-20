//
//  percentView.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 17.09.2022.
//

import UIKit

class ResultElemetView: UIView {
    
    private lazy var spacer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.145, green: 0.511, blue: 0.335, alpha: 0.2)
        return view
    }()
    
    private lazy var spacerTwo: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.145, green: 0.511, blue: 0.335, alpha: 0.2)
        return view
    }()
    
    private lazy var spacerThree: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.145, green: 0.511, blue: 0.335, alpha: 0.2)
        return view
    }()
    
    private lazy var spacerFour: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.145, green: 0.511, blue: 0.335, alpha: 0.2)
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Результат расчета"
        label.font = .boldSystemFont(ofSize: 28)
        return label
    }()
    
    lazy var fullPriceNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "СТОИМОСТЬ КОНТРАКТА"
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    lazy var monthPaymentNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ПЛАТЕЖ С НДС"
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    lazy var fullNdsNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ЭКОНОМИЯ ПО НДС"
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    lazy var fullIncomeTaxNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ЭКОНОМИЯ ПО НАЛОГУ НА ПРИБЫЛЬ"
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    
    lazy var fullPriceLabel: UILabel = {
        let label = UILabel()
        //label.text = "12 000 000"
        label.textColor = UIColor(red: 0.145, green: 0.311, blue: 0.535, alpha: 0.8)
        label.font = .systemFont(ofSize: 25, weight: .light)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var monthPaymentLabel: UILabel = {
        let label = UILabel()
        //label.text = "120 000"
        label.textColor = UIColor(red: 0.145, green: 0.311, blue: 0.535, alpha: 0.8)
        label.font = .systemFont(ofSize: 25, weight: .light)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var fullNdsLabel: UILabel = {
        let label = UILabel()
        //label.text = "2 100 000"
        label.textColor = UIColor(red: 0.145, green: 0.311, blue: 0.535, alpha: 0.8)
        label.font = .systemFont(ofSize: 25, weight: .light)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var fullIncomeTaxLabel: UILabel = {
        let label = UILabel()
        //label.text = "2 100 000"
        label.textColor = UIColor(red: 0.145, green: 0.311, blue: 0.535, alpha: 0.8)
        label.font = .systemFont(ofSize: 25, weight: .light)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
        setupSubViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupBackground() {
        backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.04)
        layer.cornerRadius = 10
    }
    
    private func setupSubViews() {
        addSubview(nameLabel)
        addSubview(fullPriceNameLabel)
        addSubview(monthPaymentNameLabel)
        addSubview(fullNdsNameLabel)
        addSubview(fullIncomeTaxNameLabel)
        
        addSubview(fullPriceLabel)
        addSubview(monthPaymentLabel)
        addSubview(fullNdsLabel)
        addSubview(fullIncomeTaxLabel)
        
        addSubview(spacer)
        addSubview(spacerTwo)
        addSubview(spacerThree)
        addSubview(spacerFour)
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            nameLabel.heightAnchor.constraint(equalToConstant: 28),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            fullPriceNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15),
            fullPriceNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fullPriceNameLabel.heightAnchor.constraint(equalToConstant: 28),
            fullPriceNameLabel.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            fullPriceLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            fullPriceLabel.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            fullPriceLabel.heightAnchor.constraint(equalToConstant: 28),
            fullPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            spacer.topAnchor.constraint(equalTo: fullPriceLabel.bottomAnchor, constant: 5),
            spacer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            spacer.heightAnchor.constraint(equalToConstant: 1),
            spacer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            monthPaymentNameLabel.topAnchor.constraint(equalTo: spacer.bottomAnchor, constant: 15),
            monthPaymentNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            monthPaymentNameLabel.heightAnchor.constraint(equalToConstant: 28),
            monthPaymentNameLabel.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10)
        ])

        NSLayoutConstraint.activate([
            monthPaymentLabel.topAnchor.constraint(equalTo: spacer.bottomAnchor, constant: 10),
            monthPaymentLabel.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            monthPaymentLabel.heightAnchor.constraint(equalToConstant: 28),
            monthPaymentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            spacerTwo.topAnchor.constraint(equalTo: monthPaymentLabel.bottomAnchor, constant: 5),
            spacerTwo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            spacerTwo.heightAnchor.constraint(equalToConstant: 1),
            spacerTwo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        NSLayoutConstraint.activate([
            fullNdsNameLabel.topAnchor.constraint(equalTo: spacerTwo.bottomAnchor, constant: 15),
            fullNdsNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fullNdsNameLabel.heightAnchor.constraint(equalToConstant: 28),
            fullNdsNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            fullNdsLabel.topAnchor.constraint(equalTo: spacerTwo.bottomAnchor, constant: 10),
            fullNdsLabel.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            fullNdsLabel.heightAnchor.constraint(equalToConstant: 28),
            fullNdsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        NSLayoutConstraint.activate([
            spacerThree.topAnchor.constraint(equalTo: fullNdsLabel.bottomAnchor, constant: 5),
            spacerThree.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            spacerThree.heightAnchor.constraint(equalToConstant: 1),
            spacerThree.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        
        NSLayoutConstraint.activate([
            fullIncomeTaxNameLabel.topAnchor.constraint(equalTo: spacerThree.bottomAnchor, constant: 15),
            fullIncomeTaxNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fullIncomeTaxNameLabel.heightAnchor.constraint(equalToConstant: 28),
            fullIncomeTaxNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        
        NSLayoutConstraint.activate([
            fullIncomeTaxLabel.topAnchor.constraint(equalTo: spacerThree.bottomAnchor, constant: 10),
            fullIncomeTaxLabel.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            fullIncomeTaxLabel.heightAnchor.constraint(equalToConstant: 28),
            fullIncomeTaxLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            spacerFour.topAnchor.constraint(equalTo: fullIncomeTaxLabel.bottomAnchor, constant: 5),
            spacerFour.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            spacerFour.heightAnchor.constraint(equalToConstant: 1),
            spacerFour.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])

        
        
        
    }
    
    
}
