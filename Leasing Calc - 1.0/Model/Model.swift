//
//  Model.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 20.09.2022.
//

import Foundation


struct CalculationModel {
    
    var price: String
    var prepayment: String
    var term: String
    var percent: String
    
    var fullPriceContract: String {
        let price = Double(price.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0
        let percent = Double(percent.replacingOccurrences(of: "%", with: "", options: .literal, range: nil)) ?? 0
        let term = Double(term.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0
        print(percent)
        let fullPrice = price + (price * percent / 100) * term / 12
        return String(fullPrice)
    }
    
    var bodyOfPay: String {
        guard let fullPrice = Double(fullPriceContract) else { return "" }
        let prepayment = Double(prepayment.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0.0
        let body = fullPrice - prepayment
        return String(body)
    }
    
    var monthPayment: String {
        guard let body = Double(bodyOfPay) else { return "" }
        let term = Double(term.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0
        let monthPay = body / term
        return String(monthPay)
    }
    var listOfPayment: [String] {
        let term = Int(term.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0
        var result: [String] = []
        for _ in 0...term {
            result.append(monthPayment)
        }
        return result
    }

    var fullNDS: String? {
        guard let fullPrice = Double(fullPriceContract) else { return "" }
        let nds = fullPrice * 0.166
        
        let resultNDS = String(nds)
        return resultNDS
    }
    
    var monthNDS: String? {
        guard let body = Double(bodyOfPay) else { return "" }
        let term = Double(term.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0
        let monthPay = body / term
        let nds = monthPay * 1.166
        
        
        return String(nds)
    }
}
