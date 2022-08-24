//
//  CalcResultComponentView.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 24.08.2022.
//

import UIKit

final class ResultComponentView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution = .equalSpacing
        sv.spacing = 10
        sv.alignment = .leading
        sv.addArrangedSubview(titleLabel)
        sv.addArrangedSubview(resultLabel)
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray2
        label.font = .boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 36)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupBackground() {
        backgroundColor = UIColor(red: 65.0/255.0, green: 76.0/255.0, blue: 81.0/255.0, alpha: 0.5)
        layer.cornerRadius = 10
    }
    
    private func setupViews() {
        self.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15)
        ])
    }
}
