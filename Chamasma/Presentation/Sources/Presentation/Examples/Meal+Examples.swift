//
//  Menu+Examples.swift
//
//
//  Created by Mariam Ormotsadze on 23.04.23.
//

import DesignSystem
import Domain

// MARK: - Example
public extension Meal {
    enum Example {
        public static let meals = [cheesburger, chiliCheesburger, hamburger, vegetarianBurger, tofu, salad]

        static let cheesburger = Meal(
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
            allergens: []
        )

        static let chiliCheesburger = Meal(
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
            allergens: []
        )

        static let hamburger = Meal(
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
            allergens: []
        )

        static let vegetarianBurger = Meal(
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
            allergens: []
        )

        static let tofu = Meal(
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
            allergens: []
        )

        static let salad = Meal(
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
            allergens: []
        )
    }
}
