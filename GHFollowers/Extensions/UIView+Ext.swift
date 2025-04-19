//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Rodrigo Porto on 19/04/25.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
    
}
