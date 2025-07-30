//
//  HomeView.swift
//  MatchMate
//
//  Created by Richa Kalani on 30/07/25.
//

import SwiftUI

struct HomeView: View {
    @State var users: [User]
    var actionButtonClick: (User) -> Void
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach($users) { $user in
                        ProfileView(actionButtonClick: actionButtonClick, name: user.firstName ?? "", location: user.address?.city ?? "", image: user.image ?? "", user: $user)
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding(.vertical)
            }
        }
    }
}
