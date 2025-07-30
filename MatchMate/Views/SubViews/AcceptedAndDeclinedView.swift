//
//  AcceptedAndDeclinedView.swift
//  MatchMate
//
//  Created by Richa Kalani on 30/07/25.
//

import SwiftUI

struct AcceptedAndDeclinedView: View {
    var users: [User]
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(users) { user in
                        SelectedProfilesView(name: user.firstName ?? "", location: user.address?.city ?? "", isAccepted: user.isAccepted ??  false, image: user.image ?? "")
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding(.vertical)
            }
        }
    }
}
