//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Rodrigo Porto on 14/04/25.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
    
}
