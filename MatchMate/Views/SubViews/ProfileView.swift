//
//  ProfileView.swift
//  MatchMate
//
//  Created by Richa Kalani on 29/07/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ProfileDetailsView()
            ActionButtonView()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ProfileView()
}
