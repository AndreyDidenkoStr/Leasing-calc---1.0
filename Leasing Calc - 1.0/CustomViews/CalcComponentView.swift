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
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var minLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var maxLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var currentValueLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupViews() {
        self.addSubview(nameLabel)
        self.addSubview(minLabel)
        self.addSubview(maxLabel)
        self.addSubview(currentValueLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 20),
            nameLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            minLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            minLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            minLabel.heightAnchor.constraint(equalToConstant: 20),
            minLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            maxLabel.topAnchor.constraint(equalTo: minLabel.bottomAnchor),
            maxLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            maxLabel.heightAnchor.constraint(equalToConstant: 20),
            maxLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            currentValueLabel.topAnchor.constraint(equalTo: maxLabel.bottomAnchor),
            currentValueLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            currentValueLabel.heightAnchor.constraint(equalToConstant: 20),
            currentValueLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
