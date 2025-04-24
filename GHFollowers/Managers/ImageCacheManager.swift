//
//  ImageCacheManager.swift
//  GHFollowers
//
//  Created by Rodrigo Porto on 23/04/25.
//

import UIKit

final class ImageCacheManager {
    static let shared = ImageCacheManager()
    private let cache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    func downloadImage(from urlString: String) async -> UIImage? {
        if let cachedImage = image(for: urlString) {
            return cachedImage
        }
        
        guard let url = URL(string: urlString) else { return nil }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let image = UIImage(data: data) else { return nil }
            setImage(image, for: urlString)
            return image
        } catch {
            return nil
        }
    }
    
    private func image(for urlString: String) -> UIImage? {
        return cache.object(forKey: urlString as NSString)
    }
    
    private func setImage(_ image: UIImage, for urlString: String) {
        cache.setObject(image, forKey: urlString as NSString)
    }
}
