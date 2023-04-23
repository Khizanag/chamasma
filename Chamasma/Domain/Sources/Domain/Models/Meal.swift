//
//  Meal.swift
//  Domain
//
//  Created by Giga Khizanishvili on 15.04.23.
//

import SwiftUI

public struct Meal: Identifiable {
    public let id = UUID()
    public let name: String
    public let description: String
    public let rating: Double
    public let price: Double
    public let image: Image
    public let ingredients: [String]
    public let isVegetarian: Bool
    public let isVegan: Bool
    public let isGlutenFree: Bool
    public let isPopular: Bool
    public let isSpicy: Bool
    public let allergens: [Allergen]

    public init(
        name: String,
        description: String,
        rating: Double,
        price: Double,
        image: Image,
        ingredients: [String],
        isVegetarian: Bool,
        isVegan: Bool,
        isGlutenFree: Bool,
        isPopular: Bool,
        isSpicy: Bool,
        allergens: [Allergen]
    ) {
        self.name = name
        self.description = description
        self.rating = rating
        self.price = price
        self.image = image
        self.ingredients = ingredients
        self.isVegetarian = isVegetarian
        self.isVegan = isVegan
        self.isGlutenFree = isGlutenFree
        self.isPopular = isPopular
        self.isSpicy = isSpicy
        self.allergens = allergens
    }
}
