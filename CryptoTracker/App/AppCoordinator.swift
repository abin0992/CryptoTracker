//
//  AppCoordinator.swift
//  CryptoTracker
//
//  Created by Abin Baby on 21.01.24.
//

import Combine
import SwiftUI
import Swinject

final class AppCoordinator: ObservableObject {

    @StateObject private var vm = HomeCryptoListViewModel()
    @State private var showLaunchView: Bool = true

    private var cancellables = Set<AnyCancellable>()

    private let resolver: Resolver
    var path: NavigationPath

    init(
        resolver: Resolver,
        path: NavigationPath
    ) {
        self.resolver = resolver
        self.path = path
    }

    @ViewBuilder
    func start() -> some View {
        homeCryptoListView()
    }

    private func push<T: Hashable>(_ coordinator: T) {
        path.append(coordinator)
    }

}

private extension AppCoordinator {

    func homeCryptoListView() -> some View {
       // return HomeCryptoListView()
//        guard let viewModel = resolver.resolve(SearchUserViewModel.self) else {
//            return AnyView(EmptyView())
//        }
//        return AnyView(SearchUserView(viewModel: viewModel))
        HomeCryptoListView()
            .navigationBarHidden(true)

//            ZStack {
//                if showLaunchView {
//                    LaunchView(showLaunchView: $showLaunchView)
//                        .transition(.move(edge: .leading))
//                }
//            }
//            .zIndex(2.0)
   //     }
    }
}
