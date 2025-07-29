//
//  MatchMateView.swift
//  MatchMate
//
//  Created by Richa Kalani on 29/07/25.
//

import SwiftUI

struct MatchMateView: View {
    @State private var selectedIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            NavigationStack() {
                HomeRouter.getHomeView()
                    .navigationTitle("All Profiles")
            }
            .tabItem {
                Text("All Profiles")
                Image(systemName: "person.2")
                    .renderingMode(.template)
            }
            .tag(0)
            
            NavigationStack() {
                AcceptedAndDeclinedRouter.getAcceptedAndDeclinedView()
                    .navigationTitle("Acceptances")
            }
            .tabItem {
                Label("Acceptances", systemImage: "person.fill.checkmark")
            }
            .badge("15")
            .tag(1)
            
            NavigationStack() {
                AcceptedAndDeclinedRouter.getAcceptedAndDeclinedView()
                    .navigationTitle("Declined")
                
            }
            .tabItem {
                Label("Declined", systemImage: "person.fill.xmark")
            }
            .badge("12")
            .tag(2)
        }
        .tint(.pink)
        .onAppear(perform: {
            UITabBar.appearance().unselectedItemTintColor = .systemBrown
            UITabBarItem.appearance().badgeColor = .systemPink
            UITabBar.appearance().backgroundColor = .systemGray4.withAlphaComponent(0.4)
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemPink]
        })
    }
}

#Preview {
    MatchMateView()
}
