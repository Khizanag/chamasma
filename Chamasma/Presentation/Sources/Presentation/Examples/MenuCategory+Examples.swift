//
//  MenuCategory+Examples.swift
//
//
//  Created by Giga Khizanishvili on 18.04.23.
//

import DesignSystem
import Domain

// MARK: - Example
extension MenuCategory {
    static var example: Self {
        Self(
            name: "Category #\(Int.random(in: 1...100))",
            image: DesignSystem.Image.burger,
            items: []
        )
    }
}
