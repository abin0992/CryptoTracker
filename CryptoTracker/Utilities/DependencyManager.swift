//
//  DependencyManager.swift
//  CryptoTracker
//
//  Created by Abin Baby on 21.01.24.
//

import Foundation
import Swinject
import SwiftUI

// MARK: - DependencyManager

final class DependencyManager {
    static func registerServices() {
        Container.shared.register(AppCoordinator.self) { resolver, path in
            AppCoordinator(
                resolver: resolver,
                path: path
            )
        }

//        Container.shared.register(SearchUserViewModel.self) { _ in
//            SearchUserViewModel()
//        }
    }
}

extension Container {
    // MARK: - Properties

    static let shared = Container()

//    static var searchUserViewModel: SearchUserViewModel {
//        shared.resolve(SearchUserViewModel.self)!
//    }

    static var appCoordinator: AppCoordinator {
        shared.resolve(
            AppCoordinator.self,
            argument: NavigationPath()
        )!
    }
}
