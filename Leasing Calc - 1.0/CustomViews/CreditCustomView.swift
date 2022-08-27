//
//  CreditCustomView.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 27.08.2022.
//

import Foundation
import UIKit

final class CreditCustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // - full price
    // - first payment
    // - month
    // - rate
    
    // - Labels
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var firstPaymentLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var monthLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var rateLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    // - TextFields
    lazy var priceTextField: UITextField = {
        let tf = UITextField()
        
        return tf
    }()
    
    lazy var firstPaymentTextField: UITextField = {
        let tf = UITextField()
        
        return tf
    }()
    
    lazy var monthTextField: UITextField = {
        let tf = UITextField()
        
        return tf
    }()
    
    lazy var rateTextField: UITextField = {
        let tf = UITextField()
        
        return tf
    }()
    
    // setup UI and constraint func
    
    private func setupUI() {
        
    }
}
