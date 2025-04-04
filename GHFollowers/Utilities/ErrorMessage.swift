//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Rodrigo Porto on 04/04/25.
//

import Foundation

enum ErrorMessage: String {
    case invalidData = "The data received from the server was invalid. Please try again."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
}
