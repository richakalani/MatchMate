//
//  ActionButtonView.swift
//  MatchMate
//
//  Created by Richa Kalani on 29/07/25.
//

import SwiftUI

struct ActionButtonView: View {
    var body: some View {
        HStack(spacing: UIScreen.main.bounds.width * 0.4) {
                 Button(action: {
                     print("Declined")
                 }) {
                     Image(systemName: "xmark")
                         .font(.system(size: 24, weight: .bold))
                         .foregroundColor(.red)
                         .frame(width: 60, height: 60)
                         .background(Color.white)
                         .clipShape(Circle())
                         .shadow(radius: 5)
                 }
                 Button(action: {
                     print("Accepted")
                 }) {
                     Image(systemName: "checkmark")
                         .font(.system(size: 24, weight: .bold))
                         .foregroundColor(.green)
                         .frame(width: 60, height: 60)
                         .background(Color.white)
                         .clipShape(Circle())
                         .shadow(radius: 5)
                 }
             }
    }
}

#Preview {
    ActionButtonView()
}
