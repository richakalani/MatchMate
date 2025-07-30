//
//  MatchMateView.swift
//  MatchMate
//
//  Created by Richa Kalani on 29/07/25.
//

import SwiftUI

struct MatchMateView: View {
    @StateObject var presenter: MatchMatePresenter
    init(presenter: MatchMatePresenter) {
        self._presenter = StateObject(wrappedValue: presenter)
    }
    var body: some View {
        TabView(selection: $presenter.selectedIndex) {
            NavigationStack() {
                HomeView(users: presenter.userData?.users ?? [], actionButtonClick: { response in
                    presenter.userSelected(user: response)
                })
                    .id(presenter.userData?.users?.count ?? 0)
                    .navigationTitle("All Profiles")
            }
            .tabItem {
                Text("All Profiles")
                Image(systemName: "person.2")
                    .renderingMode(.template)
            }
            .tag(0)
            
            NavigationStack() {
                AcceptedAndDeclinedView(users: presenter.acceptedUsers)
                    .id(presenter.acceptedUsers.count)
                    .navigationTitle("Acceptances")
            }
            .tabItem {
                Label("Acceptances", systemImage: "person.fill.checkmark")
            }
            .badge(presenter.acceptedUsers.count)
            .tag(1)
            
            NavigationStack() {
                AcceptedAndDeclinedView(users: presenter.rejectedUser)
                    .id(presenter.rejectedUser.count)
                    .navigationTitle("Declined")
                
            }
            .tabItem {
                Label("Declined", systemImage: "person.fill.xmark")
            }
            .badge(presenter.rejectedUser.count)
            .tag(2)
        }
        .tint(.pink)
        .onAppear(perform: {
            UITabBar.appearance().unselectedItemTintColor = .systemBrown
            UITabBarItem.appearance().badgeColor = .systemPink
            UITabBar.appearance().backgroundColor = .systemGray4.withAlphaComponent(0.4)
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemPink]
        })
        .task {
            presenter.fetchUserData()
        }
    }
}
