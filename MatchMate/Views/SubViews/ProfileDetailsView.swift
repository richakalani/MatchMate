//
//  ProfileDetailsView.swift
//  MatchMate
//
//  Created by Richa Kalani on 30/07/25.
//

import SwiftUI

struct ProfileDetailsView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
                .foregroundColor(.gray.opacity(0.6))
            Text("Name & Last Name")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
            Text("location 2 line tkljfojovkks eiorjfioejr iojfiojsiof")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ProfileDetailsView()
}
