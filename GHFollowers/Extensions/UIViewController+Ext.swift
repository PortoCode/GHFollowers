//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Rodrigo Porto on 18/03/25.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        let alertViewController = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
        alertViewController.modalPresentationStyle = .overFullScreen
        alertViewController.modalTransitionStyle = .crossDissolve
        present(alertViewController, animated: true)
    }
    
    func presentDefaultError() {
        let alertViewController = GFAlertViewController(title: "Something Went Wrong",
                                                        message: "We were unable to complete your task at this time. Please try again.",
                                                        buttonTitle: "Ok")
        alertViewController.modalPresentationStyle = .overFullScreen
        alertViewController.modalTransitionStyle = .crossDissolve
        present(alertViewController, animated: true)
    }
    
    func presentSafariViewController(with url: URL) {
        let safariViewController = SFSafariViewController(url: url)
        safariViewController.preferredControlTintColor = .systemGreen
        present(safariViewController, animated: true)
    }
    
}
