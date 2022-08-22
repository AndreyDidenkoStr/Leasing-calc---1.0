//
//  CalcComponentView.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 12.08.2022.
//

import UIKit

class CalcComponentView: UIView, UITextFieldDelegate {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
        setupViews()
        priceTextField.delegate = self
        termTextField.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var termTitlelabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray2
        label.font = .boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var priceTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray2
        label.font = .boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var priceTextField: UITextField = {
        let tf = UITextField()
        tf.textColor = .white
        tf.font = .boldSystemFont(ofSize: 36)
        tf.keyboardType = .numberPad
        tf.addTarget(self, action: #selector(self.textFieldFilter), for: .editingChanged)
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    @objc private func textFieldFilter(_ textField: UITextField) {
      if let text = textField.text, let intText = Int(text) {
        textField.text = "\(intText)"
      } else {
        textField.text = ""
      }
    }
    
    lazy var termTextField: UITextField = {
        let tf = UITextField()
        tf.textColor = .white
        tf.font = .boldSystemFont(ofSize: 36)
        tf.keyboardType = .numberPad
        tf.addTarget(self, action: #selector(self.textFieldFilter), for: .editingChanged)
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private func setupBackground() {
        backgroundColor = UIColor(red: 65.0/255.0, green: 76.0/255.0, blue: 81.0/255.0, alpha: 0.5)
        layer.cornerRadius = 10
    }
    
    private func setupViews() {
        self.addSubview(priceTextField)
        self.addSubview(termTextField)
        self.addSubview(termTitlelabel)
        self.addSubview(priceTitleLabel)
        
        NSLayoutConstraint.activate([
            priceTextField.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            priceTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            priceTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
        ])
        
        NSLayoutConstraint.activate([
            priceTitleLabel.topAnchor.constraint(equalTo: priceTextField.bottomAnchor, constant: 2),
            priceTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  15)
        ])
        
        NSLayoutConstraint.activate([
            termTextField.topAnchor.constraint(equalTo: priceTitleLabel.bottomAnchor, constant: 5),
            termTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            termTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
        ])

        NSLayoutConstraint.activate([
            termTitlelabel.topAnchor.constraint(equalTo: termTextField.bottomAnchor, constant: 2),
            termTitlelabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        ])
    }
    
    private func textLimit(existingText: String?,
                           newText: String,
                           limit: Int) -> Bool {
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }
}

extension CalcComponentView {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == priceTextField {
            if range.location < 10 {
                let allowedCharacters = CharacterSet(charactersIn:"0123456789")
                let characterSet = CharacterSet(charactersIn: string)
                return allowedCharacters.isSuperset(of: characterSet)
            } else {
                return false
            }
        } else if textField == termTextField {
            if range.location < 2 {
                let allowedCharacters = CharacterSet(charactersIn:"0123456789")
                let characterSet = CharacterSet(charactersIn: string)
                return allowedCharacters.isSuperset(of: characterSet)
            } else {
                return false
            }
        }
        return true
    }
}

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = " "
        return formatter
    }()
}

extension Numeric {
    var formattedWithSeparator: String { Formatter.withSeparator.string(for: self) ?? "" }
}
