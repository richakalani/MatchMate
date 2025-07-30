//
//  ProfileDetailsView.swift
//  MatchMate
//
//  Created by Richa Kalani on 30/07/25.
//

import SwiftUI

struct ProfileDetailsView: View {
    var name: String
    var location: String
    var image: String
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: image))
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
            Text(name)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
            Text(location)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(.horizontal, 16)
        }
    }
}
