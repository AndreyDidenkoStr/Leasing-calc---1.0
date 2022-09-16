//
//  InfoElement.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 14.09.2022.
//

import Foundation
import UIKit

class InfoElementView: UIView {
    
    // MARK: Properties
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Расчет графика"
        label.font = .boldSystemFont(ofSize: 28)
        return label
    }()
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "СТОИМОСТЬ ИМУЩЕСТВА"
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    lazy var prepaymentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "АВАНСОВЫЙ ПЛАТЕЖ"
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    lazy var termLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "СРОК ЛИЗИНГА"
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    lazy var percentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ПРОЦЕНТ УДОРОЖАНИЯ"
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    
    lazy var priceTextField: UITextField = {
        let tf = UITextField()
        tf.delegate = self
        tf.keyboardType = .numberPad
        tf.backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.1)
        tf.layer.cornerRadius = 10
        tf.font = .systemFont(ofSize: 25, weight: .semibold)
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    lazy var prepaymentTextField: UITextField = {
        let tf = UITextField()
        tf.delegate = self
        tf.keyboardType = .numberPad
        tf.backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.1)
        tf.layer.cornerRadius = 10
        tf.font = .systemFont(ofSize: 25, weight: .semibold)
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    lazy var termTextField: UITextField = {
        let tf = UITextField()
        tf.delegate = self
        tf.keyboardType = .numberPad
        tf.backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.1)
        tf.layer.cornerRadius = 10
        tf.font = .systemFont(ofSize: 25, weight: .semibold)
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    lazy var percentTextField: UITextField = {
        let tf = UITextField()
        tf.delegate = self
        tf.keyboardType = .numberPad
        tf.backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.1)
        tf.layer.cornerRadius = 10
        tf.font = .systemFont(ofSize: 25, weight: .semibold)
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    // MARK: Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
        setupSubViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Functions
    
    func setupBackground() {
        backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.04)
        layer.cornerRadius = 10
    }
    
    func setupSubViews() {
        addSubview(nameLabel)
        
        addSubview(priceLabel)
        addSubview(prepaymentLabel)
        addSubview(termLabel)
        addSubview(percentLabel)
        
        addSubview(priceTextField)
        addSubview(percentTextField)
        addSubview(prepaymentTextField)
        addSubview(termTextField)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            nameLabel.heightAnchor.constraint(equalToConstant: 28),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            priceLabel.heightAnchor.constraint(equalToConstant: 20),
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            priceTextField.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 5),
            priceTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            priceTextField.heightAnchor.constraint(equalToConstant: 40),
            priceTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            prepaymentLabel.topAnchor.constraint(equalTo: priceTextField.bottomAnchor, constant: 10),
            prepaymentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            prepaymentLabel.heightAnchor.constraint(equalToConstant: 20),
            prepaymentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            prepaymentTextField.topAnchor.constraint(equalTo: prepaymentLabel.bottomAnchor, constant: 5),
            prepaymentTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            prepaymentTextField.heightAnchor.constraint(equalToConstant: 40),
            prepaymentTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            termLabel.topAnchor.constraint(equalTo: prepaymentTextField.bottomAnchor, constant: 10),
            termLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            termLabel.heightAnchor.constraint(equalToConstant: 20),
            termLabel.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            termTextField.topAnchor.constraint(equalTo: termLabel.bottomAnchor, constant: 5),
            termTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            termTextField.heightAnchor.constraint(equalToConstant: 40),
            termTextField.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            percentLabel.topAnchor.constraint(equalTo: prepaymentTextField.bottomAnchor, constant: 10),
            percentLabel.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            percentLabel.heightAnchor.constraint(equalToConstant: 20),
            percentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            percentTextField.topAnchor.constraint(equalTo: percentLabel.bottomAnchor, constant: 5),
            percentTextField.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            percentTextField.heightAnchor.constraint(equalToConstant: 40),
            percentTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
    }
}

extension InfoElementView: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        
        //MARK: Разобраться с этим форматтером
        
        // Uses the number format corresponding to your Locale
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale.current
        formatter.maximumFractionDigits = 0
        formatter.groupingSeparator = " "
        
        
        // Uses the grouping separator corresponding to your Locale
        // e.g. "," in the US, a space in France, and so on
        if let groupingSeparator = formatter.groupingSeparator {
            
            if string == groupingSeparator {
                return true
            }
            
            if let textWithoutGroupingSeparator = textField.text?.replacingOccurrences(of: groupingSeparator, with: "") {
                var totalTextWithoutGroupingSeparators = textWithoutGroupingSeparator + string
                if string.isEmpty { // pressed Backspace key
                    totalTextWithoutGroupingSeparators.removeLast()
                }
                if let numberWithoutGroupingSeparator = formatter.number(from: totalTextWithoutGroupingSeparators),
                   let formattedText = formatter.string(from: numberWithoutGroupingSeparator) {
                    
                    textField.text = formattedText
                    return false
                }
                
            }
        }
        return true
    }
    
    
}
