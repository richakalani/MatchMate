//
//  ProfileView.swift
//  SelectedProfilesView
//
//  Created by Richa Kalani on 29/07/25.
//

import SwiftUI

struct SelectedProfilesView: View {
    var name: String
    var location: String
    var isAccepted: Bool
    var image: String
    var body: some View {
        VStack {
            ProfileDetailsView(name: name, location: location, image: image)
            Text(isAccepted ? "Accepted" : "Declined")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(isAccepted ? Color.green : Color.red)
                .cornerRadius(10)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4)
        .frame(maxWidth: .infinity)
    }
}
