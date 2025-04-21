//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Rodrigo Porto on 04/04/25.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let placeholderImage = Images.placeholder
    var currentUrlString: String?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setImage(from urlString: String) {
        currentUrlString = urlString
        Task {
            let downloadedImage = await NetworkManager.shared.downloadImage(from: urlString)
            
            if currentUrlString == urlString {
                image = downloadedImage ?? placeholderImage
            }
        }
    }
    
}
