//
//  FollowerView.swift
//  GHFollowers
//
//  Created by Rodrigo Porto on 21/04/25.
//

import SwiftUI

struct CachedAsyncImage: View {
    let url: String
    let placeholder: Image
    
    @State private var uiImage: UIImage? = nil
    @State private var hasStartedLoading = false
    
    var body: some View {
        Group {
            if let uiImage = uiImage {
                Image(uiImage: uiImage)
                    .resizable()
            } else {
                placeholder
                    .resizable()
                    .onAppear {
                        if !hasStartedLoading {
                            hasStartedLoading = true
                            loadImage()
                        }
                    }
            }
        }
    }
    
    private func loadImage() {
        Task {
            self.uiImage = await ImageCacheManager.shared.downloadImage(from: url)
        }
    }
}

struct FollowerView: View {
    
    var follower: Follower
    
    var body: some View {
        VStack {
            CachedAsyncImage(url: follower.avatarUrl, placeholder: Image(.avatarPlaceholder))
                .aspectRatio(contentMode: .fit)
                .clipShape(Rectangle())
                .cornerRadius(12)
            
            Text(follower.login)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FollowerView(follower: Follower(login: "PortoCode", avatarUrl: ""))
}
