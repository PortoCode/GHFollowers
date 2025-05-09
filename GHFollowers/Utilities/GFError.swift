//
//  GFError.swift
//  GHFollowers
//
//  Created by Rodrigo Porto on 04/04/25.
//

import Foundation

enum GFError: String, Error {
    case invalidData = "The data received from the server was invalid. Please try again."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case unableToFavorite = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites = "You've already favorited this user."
}
