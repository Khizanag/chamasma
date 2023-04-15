//
//  Menu.swift
//  Chamasma
//
//  Created by Giga Khizanishvili on 15.04.23.
//

import SwiftUI

// MARK: - Menu
struct Menu {
    let name: String
    let description: String
    let image: Image
    let categories: [MenuCategory]
}

// MARK: - MenuCategory
struct MenuCategory {
    let name: String
    let items: [Meal]
}
