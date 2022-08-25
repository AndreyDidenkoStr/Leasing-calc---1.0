//
//  TestView.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 26.08.2022.
//

import UIKit

final class TestComponentView: UIView {
    
    private var valueLabel = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var button: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "plus")
        var config = UIButton.Configuration.filled()
          config.imagePadding = 40
          button.configuration = config
        button.setImage(image, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.text = ""
        label.font = .boldSystemFont(ofSize: 36)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupBackground() {
        backgroundColor = UIColor(red: 65.0/255.0, green: 76.0/255.0, blue: 81.0/255.0, alpha: 0.5)
        layer.cornerRadius = 10
    }
    
    private func setupViews() {
        self.addSubview(resultLabel)
        self.addSubview(button)
        
        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            resultLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            resultLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            resultLabel.widthAnchor.constraint(equalToConstant: 200 )
        ])
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            button.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func buttonAction(sender: UIButton!) {
        print("Button tapped")
        valueLabel += 1000
        resultLabel.text = String(valueLabel)

    }
}
