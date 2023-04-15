//
//  Meal.swift
//  Chamasma
//
//  Created by Giga Khizanishvili on 15.04.23.
//

import SwiftUI

struct Meal {
    let name: String
    let description: String
    let price: Double
    let image: Image
    let ingredients: [String]
    let isVegetarian: Bool
    let isVegan: Bool
    let isGlutenFree: Bool
    let isSpicy: Bool
    let allergens: [Allergen]
}
