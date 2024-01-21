//
//  Item.swift
//  CryptoTracker
//
//  Created by Abin Baby on 21.01.24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date

    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
