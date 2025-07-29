//
//  AcceptedAndDeclinedView.swift
//  MatchMate
//
//  Created by Richa Kalani on 30/07/25.
//

import SwiftUI

struct AcceptedAndDeclinedView: View {
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0..<10) { index in
                       SelectedProfilesView()
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    AcceptedAndDeclinedView()
}
