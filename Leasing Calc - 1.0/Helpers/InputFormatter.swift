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
    
   
    
}
