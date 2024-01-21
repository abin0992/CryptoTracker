//
//  ContentView.swift
//  CryptoTracker
//
//  Created by Abin Baby on 21.01.24.
//

import SwiftUI
import Swinject

struct ContentView: View {
    @StateObject private var appCoordinator = Container.appCoordinator

    var body: some View {
        NavigationStack(path: $appCoordinator.path) {
            appCoordinator.start()
        }
        .environmentObject(appCoordinator)
    }
}

#Preview {
    ContentView()
}
