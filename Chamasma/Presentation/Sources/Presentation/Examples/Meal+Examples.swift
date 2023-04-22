//
//  Menu+Examples.swift
//  
//
//  Created by Mariam Ormotsadze on 23.04.23.
//

import Domain
import DesignSystem

// MARK: - Example
public extension Meal {
    enum examples: CaseIterable {
        case cheesburger
        case chiliCheesburger
        case hamburger
        case vegetarianBurger
        case tofu
        case salad
        
        public var example: Meal {
            switch self {
            case .cheesburger:
                return Meal(
                    name: "Cheesebuger",
                    description: "Cheese, Burger, Beef, ketchup, Lettuce",
                    rating: 0.75,
                    price: 7.89,
                    image: DesignSystem.Image.burger,
                    ingredients: [],
                    isVegetarian: false,
                    isVegan: false,
                    isGlutenFree: false,
                    isPopular: true,
                    isSpicy: false,
                    allergens: [])
            case .chiliCheesburger:
                return Meal(
                    name: "Chili Cheesebuger",
                    description: "Chili, Cheese, Burger, Beef, ketchup, Lettuce",
                    rating: 0.45,
                    price: 8.31,
                    image: DesignSystem.Image.burger,
                    ingredients: [],
                    isVegetarian: false,
                    isVegan: false,
                    isGlutenFree: false,
                    isPopular: true,
                    isSpicy: true,
                    allergens: [])
            case .hamburger:
                return Meal(
                    name: "Hamburger",
                    description: "Burger, Beef, ketchup, Lettuce",
                    rating: 0.89,
                    price: 6.47,
                    image: DesignSystem.Image.burger,
                    ingredients: [],
                    isVegetarian: false,
                    isVegan: false,
                    isGlutenFree: false,
                    isPopular: true,
                    isSpicy: false,
                    allergens: [])
            case .vegetarianBurger:
                return Meal(
                    name: "Vegetarian Burger",
                    description: "Burger, Tomato, Lettuce, Cheese",
                    rating: 0.14,
                    price: 4.99,
                    image: DesignSystem.Image.burger,
                    ingredients: [],
                    isVegetarian: true,
                    isVegan: false,
                    isGlutenFree: true,
                    isPopular: false,
                    isSpicy: false,
                    allergens: [])
            case .tofu:
                return Meal(
                    name: "Tofu",
                    description: "Tofu",
                    rating: 0.14,
                    price: 4.99,
                    image: DesignSystem.Image.burger,
                    ingredients: [],
                    isVegetarian: true,
                    isVegan: true,
                    isGlutenFree: true,
                    isPopular: false,
                    isSpicy: false,
                    allergens: [])
            case .salad:
                return Meal(
                    name: "Salad",
                    description: "Tomato, Cucumber, Lettuce",
                    rating: 0.14,
                    price: 4.99,
                    image: DesignSystem.Image.burger,
                    ingredients: [],
                    isVegetarian: true,
                    isVegan: true,
                    isGlutenFree: true,
                    isPopular: false,
                    isSpicy: false,
                    allergens: [])
            }
        }
    }
}
