//
//  MatchMateApp.swift
//  MatchMate
//
//  Created by Richa Kalani on 29/07/25.
//

import SwiftUI

@main
struct MatchMateApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MatchMateRouter.getMatMateView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
