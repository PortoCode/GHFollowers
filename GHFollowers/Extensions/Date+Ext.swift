//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Rodrigo Porto on 14/04/25.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
    
}
