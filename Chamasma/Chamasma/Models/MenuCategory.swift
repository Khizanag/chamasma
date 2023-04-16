//
//  MenuCategory.swift
//  Chamasma
//
//  Created by Giga Khizanishvili on 16.04.23.
//

import DesignSystem
import SwiftUI

// MARK: - MenuCategory
struct MenuCategory: Identifiable {
    let id = UUID()
    let name: String
    let image: Image
    let items: [Meal]
}

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
