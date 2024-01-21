//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Abin Baby on 21.01.24.
//

import SwiftUI
import SwiftData

@main
struct CryptoTrackerApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    @StateObject private var homeViewModel = HomeCryptoListViewModel()

    init() {
        DependencyManager.registerServices()

        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor(Color.theme.accent)
        ]
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: UIColor(Color.theme.accent)
        ]
        UINavigationBar.appearance().tintColor = UIColor(Color.theme.accent)
        UITableView.appearance().backgroundColor = UIColor.clear
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(homeViewModel)
        }
        .modelContainer(sharedModelContainer)
    }
}
