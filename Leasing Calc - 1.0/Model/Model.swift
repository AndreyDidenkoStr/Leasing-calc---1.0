//
//  Model.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 20.09.2022.
//

import Foundation


struct CalculationModel {
    
    let id : UUID?
    
    var price: String
    var prepayment: String
    var term: String
    var percent: String
    
    var fullPriceContract: String {
        let price = Double(price.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0
        let percent = Double(percent.replacingOccurrences(of: "%", with: "", options: .literal, range: nil)) ?? 0
        let term = Double(term.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0
        print(price)
        print(percent)
        print(term)
        
        let  fullPrice = price + (price * percent / 100) * term / 12
        let intValue = Int(fullPrice)
        print(intValue)
        return String(intValue)
    }
    
    var bodyOfPay: String {
        guard let fullPrice = Double(fullPriceContract) else { return "" }
        let prepayment = Double(prepayment.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0.0
        let body = fullPrice - prepayment
        let intValue = Int(body)
        return String(intValue)
    }
    
    var monthPayment: String {
        guard let body = Double(bodyOfPay) else { return "" }
        let term = Double(term.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0
        let monthPay = body / term
        let intValue = Int(monthPay)
        return String(intValue)
    }
    var listOfPayment: [String] {
        let term = Int(term.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)) ?? 0
        var result: [String] = []
        for _ in 0...term {
            result.append(monthPayment)
        }
        return result
    }

    var fullNDS: String {
        guard let fullPrice = Double(fullPriceContract) else { return "" }
        let nds = fullPrice * 0.166
        let intValue = Int(nds)
        let resultNDS = String(intValue)
        return resultNDS
    }
    
    var monthNDS: String {
        guard let fullPrice = Double(fullPriceContract) else { return "" }
        let nds = fullPrice * 0.166
        let intValue = Int(nds)
        let resultTax = String(intValue)
        return resultTax
    }
}
