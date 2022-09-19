//
//  percentView.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 17.09.2022.
//

import UIKit

class PercentView: UIView {
    
    lazy var slider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 60
        slider.value = 25
        slider.addTarget(self, action: #selector(sliderChanged), for: .valueChanged)
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = String(slider.value)
        label.font = .systemFont(ofSize: 24, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
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
        addSubview(slider)
        addSubview(label)
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.heightAnchor.constraint(equalToConstant: 40),
            label.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            slider.topAnchor.constraint(equalTo: label.bottomAnchor),
            slider.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            slider.heightAnchor.constraint(equalToConstant: 40),
            slider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
    }
    
    @objc func sliderChanged(sender: UISlider) {
        label.text = String(Int(sender.value))
        
    
    }
}
