//
//  HomeView.swift
//  MatchMate
//
//  Created by Richa Kalani on 30/07/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0..<10) { index in
                        ProfileView()
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    HomeView()
}
