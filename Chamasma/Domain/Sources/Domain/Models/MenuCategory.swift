//
//  MenuCategory.swift
//  Domain
//
//  Created by Giga Khizanishvili on 16.04.23.
//

import DesignSystem
import SwiftUI

// MARK: - MenuCategory
public struct MenuCategory: Identifiable {
    public let id = UUID()
    public let name: String
    public let image: Image
    public let items: [Meal]

    public init(name: String, image: Image, items: [Meal]) {
        self.name = name
        self.image = image
        self.items = items
    }
}
