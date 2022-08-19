//
//  CalcComponentView.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 12.08.2022.
//

import UIKit

class CalcComponentView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray2
        label.font = .boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var minLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var maxLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var currentValueLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 36)
        label.lineBreakMode = .byTruncatingMiddle
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupBackground() {
        backgroundColor = UIColor(red: 65.0/255.0, green: 76.0/255.0, blue: 81.0/255.0, alpha: 0.5)
        layer.cornerRadius = 10
    }
    
    private func setupViews() {
        self.addSubview(nameLabel)
        self.addSubview(currentValueLabel)
        self.addSubview(minLabel)
        self.addSubview(maxLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
        ])
        
        NSLayoutConstraint.activate([
            currentValueLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            currentValueLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            currentValueLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
        ])
        
        NSLayoutConstraint.activate([
            minLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            minLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        ])

        NSLayoutConstraint.activate([
            maxLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            maxLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -15)
            
        ])
        
       
    }
}
