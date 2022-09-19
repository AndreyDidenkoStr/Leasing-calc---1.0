//
//  InputFormatter.swift
//  Leasing Calc - 1.0
//
//  Created by Andrey Kapitalov on 14.09.2022.
//

import Foundation
import UIKit

struct InputFormatter {

    func priceFormatter(number: String) -> String {
            let cleanPhoneNumber = number.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
            let mask = "XXX XXX XXX"
            
            var result = ""
            var index = cleanPhoneNumber.startIndex
            for ch in mask where index < cleanPhoneNumber.endIndex {
                if ch == "X" {
                    result.append(cleanPhoneNumber[index])
                    index = cleanPhoneNumber.index(after: index)
                } else {
                    result.append(ch)
                }
            }
            return result
        }
    
    func format(with mask: String, phone: String) -> String {
        let numbers = phone.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
        var result = ""
        var index = numbers.startIndex // numbers iterator

        // iterate over the mask characters until the iterator of numbers ends
        for ch in mask where index < numbers.endIndex {
            if ch == "X" {
                // mask requires a number in this place, so take the next one
                result.append(numbers[index])

                // move numbers iterator to the next index
                index = numbers.index(after: index)

            } else {
                result.append(ch) // just append a mask character
            }
        }
        return result
    }
    
   
    
}

extension Int {
    func format(f: String) -> String {
        return String(format: "%\(f)d", self)
    }
}

extension Double {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

extension String {
    var digits: String {
        filter { "0"..."9" ~= $0 }
    }
}

