//
//  percentView.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 17.09.2022.
//

import UIKit

class ResultElemetView: UIView {
    
    lazy var fullPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Расчет графика"
        label.font = .boldSystemFont(ofSize: 28)
        return label
    }()
    lazy var monthPayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Расчет графика"
        label.font = .boldSystemFont(ofSize: 28)
        return label
    }()
 
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubViews() {
        addSubview(fullPriceLabel)
        addSubview(monthPayLabel)
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            fullPriceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            fullPriceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fullPriceLabel.heightAnchor.constraint(equalToConstant: 28),
            fullPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            monthPayLabel.topAnchor.constraint(equalTo: fullPriceLabel.bottomAnchor, constant: 10),
            monthPayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            monthPayLabel.heightAnchor.constraint(equalToConstant: 28),
            monthPayLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        

        
        
        
    }
    
    
}
