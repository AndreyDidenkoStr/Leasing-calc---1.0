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
    
    lazy var prepaymentTextFieldValue: UITextField = {
        let tf = UITextField()
        tf.delegate = self
        tf.keyboardType = .numberPad
        tf.textAlignment = .left
        tf.backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.1)
        tf.textColor = UIColor(red: 0.145, green: 0.311, blue: 0.535, alpha: 0.8)
        tf.layer.cornerRadius = 10
        tf.font = .systemFont(ofSize: 25, weight: .light)
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isEnabled = false
        return tf
    }()
    
    lazy var slider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 50
        slider.value = 25
        slider.addTarget(self, action: #selector(sliderChanged), for: .valueChanged)
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    lazy var roubleMarkLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .thin)
        label.text = "₽"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var roubleMarkLabelTwo: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .thin)
        label.text = "₽"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var monthMarkLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .thin)
        label.text = "МЕС"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
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
        tf.textColor = UIColor(red: 0.145, green: 0.311, blue: 0.535, alpha: 0.8)
        tf.layer.cornerRadius = 10
        tf.font = .systemFont(ofSize: 25, weight: .light)
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    lazy var prepaymentTextField: UITextField = {
        let tf = UITextField()
        tf.delegate = self
        tf.keyboardType = .numberPad
        tf.backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.1)
        tf.textColor = UIColor(red: 0.145, green: 0.311, blue: 0.535, alpha: 0.8)
        tf.layer.cornerRadius = 10
        tf.font = .systemFont(ofSize: 25, weight: .light)
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isEnabled = false
        return tf
    }()
    lazy var termTextField: UITextField = {
        let tf = UITextField()
        tf.delegate = self
        tf.keyboardType = .numberPad
        tf.backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.1)
        tf.textColor = UIColor(red: 0.145, green: 0.311, blue: 0.535, alpha: 0.8)
        tf.layer.cornerRadius = 10
        tf.font = .systemFont(ofSize: 25, weight: .light)
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    lazy var percentTextField: UITextField = {
        let tf = UITextField()
        tf.delegate = self
        tf.keyboardType = .numberPad
        tf.backgroundColor = UIColor(red: 0.145, green: 0.211, blue: 0.235, alpha: 0.1)
        tf.textColor = UIColor(red: 0.145, green: 0.311, blue: 0.535, alpha: 0.8)
        tf.layer.cornerRadius = 10
        tf.font = .systemFont(ofSize: 25, weight: .light)
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
        addSubview(roubleMarkLabel)
        addSubview(roubleMarkLabelTwo)
        addSubview(monthMarkLabel)
        
        addSubview(priceLabel)
        addSubview(prepaymentLabel)
        addSubview(termLabel)
        addSubview(percentLabel)
        
        addSubview(priceTextField)
        addSubview(percentTextField)
        addSubview(prepaymentTextField)
        addSubview(termTextField)
        
        addSubview(slider)
        addSubview(prepaymentTextFieldValue)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            prepaymentTextFieldValue.topAnchor.constraint(equalTo: priceTextField.bottomAnchor, constant: 35),
            prepaymentTextFieldValue.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            prepaymentTextFieldValue.heightAnchor.constraint(equalToConstant: 40),
            prepaymentTextFieldValue.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            slider.topAnchor.constraint(equalTo: prepaymentTextField.bottomAnchor, constant: 10),
            slider.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            slider.heightAnchor.constraint(equalToConstant: 40),
            slider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
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
            prepaymentTextField.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            termLabel.topAnchor.constraint(equalTo: slider.bottomAnchor, constant: 10),
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
            percentLabel.topAnchor.constraint(equalTo: slider.bottomAnchor, constant: 10),
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
        
        NSLayoutConstraint.activate([
            roubleMarkLabel.topAnchor.constraint(equalTo: priceTextField.topAnchor),
            roubleMarkLabel.widthAnchor.constraint(equalToConstant: 25),
            roubleMarkLabel.bottomAnchor.constraint(equalTo: priceTextField.bottomAnchor),
            roubleMarkLabel.trailingAnchor.constraint(equalTo: priceTextField.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            roubleMarkLabelTwo.topAnchor.constraint(equalTo: prepaymentTextFieldValue.topAnchor),
            roubleMarkLabelTwo.widthAnchor.constraint(equalToConstant: 25),
            roubleMarkLabelTwo.bottomAnchor.constraint(equalTo: prepaymentTextFieldValue.bottomAnchor),
            roubleMarkLabelTwo.trailingAnchor.constraint(equalTo: prepaymentTextFieldValue.trailingAnchor)
        ])
        
        
        NSLayoutConstraint.activate([
            monthMarkLabel.topAnchor.constraint(equalTo: termTextField.topAnchor),
            monthMarkLabel.widthAnchor.constraint(equalToConstant: 50),
            monthMarkLabel.bottomAnchor.constraint(equalTo: termTextField.bottomAnchor),
            monthMarkLabel.trailingAnchor.constraint(equalTo: termTextField.trailingAnchor)
        ])
    }
    
    @objc func sliderChanged(sender: UISlider) {
        prepaymentTextField.text = String(format: "%.00f", slider.value) + "%"
        changedPrepaument()
       
    }
    
    func changedPrepaument() {
        
        lazy var formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale.current
        formatter.maximumFractionDigits = 0
        formatter.groupingSeparator = " "
        
        guard let value = priceTextField.text else { return }
        guard let percent = prepaymentTextField.text else { return }
        let val = value.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
        let per = percent.replacingOccurrences(of: "%", with: "", options: .literal, range: nil)
        let stringValue = Int(val) ?? 0
        let stringPercent = Int(per) ?? 1
        print("value \(stringValue)")
        print("Percent \(stringPercent)")
        let prepaymentValue = (stringValue * stringPercent / 100)
        prepaymentTextFieldValue.text = formatter.string(from: NSNumber(value: prepaymentValue))
        
    }
    let percentFormatter: NumberFormatter = {
        let f = NumberFormatter()
        f.minimumFractionDigits = 2
        f.maximumFractionDigits = 2
        f.numberStyle = .percent
        f.locale = Locale(identifier: "en-US_POSIX")
        return f
    }()
}

extension InfoElementView: UITextFieldDelegate {
    
    // MARK: Возможно использовать вариан 1
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        //MARK: Сработало с  ограничителями - сделать такую маску для разных текстФилдов по необходимым параметрам
        
        if textField == priceTextField {
            
            // Uses the number format corresponding to your Locale
            lazy var formatter = NumberFormatter()
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
                    if totalTextWithoutGroupingSeparators.count > 9 {
                        return false // ограничиват количество символов
                    }
                    if string.isEmpty { // pressed Backspace key
                        totalTextWithoutGroupingSeparators.removeLast()
                    }
                    if let numberWithoutGroupingSeparator = formatter.number(from: totalTextWithoutGroupingSeparators),
                       let formattedText = formatter.string(from: numberWithoutGroupingSeparator) {
                        
                        textField.text = formattedText
                        sliderChanged(sender: slider)
                        return false
                    }
                }
            }
        } else if textField == prepaymentTextFieldValue {

            lazy var formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.locale = Locale.current
            formatter.maximumFractionDigits = 0
            formatter.groupingSeparator = " "
    
            if let groupingSeparator = formatter.groupingSeparator {
                
                if string == groupingSeparator {
                    return true
                }
            
                if let textWithoutGroupingSeparator = textField.text?.replacingOccurrences(of: groupingSeparator, with: "") {
                    var totalTextWithoutGroupingSeparators = textWithoutGroupingSeparator + string
                    if totalTextWithoutGroupingSeparators.count > 9 {
                        return false // ограничиват количество символов
                    }
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
        } else if textField == termTextField {
            
            guard let textFieldText = textField.text,
                  let rangeOfTextToReplace = Range(range, in: textFieldText) else {
                      return false
                  }
            let substringToReplace = textFieldText[rangeOfTextToReplace]
            let count = textFieldText.count - substringToReplace.count + string.count
            return count <= 2
            
        } else if textField == percentTextField {
            
            guard let oldText = textField.text else { return false }

                    if string.isEmpty { // this means that backspace is pressed
                        let oldDigits = textField.text?.digits
                        // drops one digit every time backspace is pressed
                        let newNumber = Double((oldDigits?.dropLast()) ?? "0.0") ?? 0
                        
                            textField.text = percentFormatter.string(for: newNumber / 10000)
                        
                    } else // something has been entered
                        if let newNumber = Double(
                                (oldText as NSString).replacingCharacters(in: range, with: string).digits
                              ) {
                        if newNumber <= 10000 {
                        textField.text = percentFormatter.string(for: newNumber / 10000)
                        }
                    }
                    return false
            
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

