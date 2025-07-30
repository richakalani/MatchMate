//
//  ProfileView.swift
//  MatchMate
//
//  Created by Richa Kalani on 29/07/25.
//

import SwiftUI

struct ProfileView: View {
    var actionButtonClick: (User) -> Void
    var name: String
    var location: String
    var image: String
    @Binding var user: User
    var body: some View {
        VStack {
            ProfileDetailsView(name: name, location: location, image: image)
            ActionButtonView(actionButtonClick: actionButtonClick, user: $user)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4)
        .frame(maxWidth: .infinity)
    }
}
