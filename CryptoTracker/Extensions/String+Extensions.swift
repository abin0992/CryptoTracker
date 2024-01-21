//
//  String+Extensions.swift
//  CryptoTracker
//
//  Created by Abin Baby on 21.01.24.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(
            of: "<[^>]+>",
            with: "",
            options: .regularExpression,
            range: nil
        )
    }
}
