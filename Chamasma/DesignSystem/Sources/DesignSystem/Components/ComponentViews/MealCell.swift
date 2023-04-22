//
//  MealCell.swift
//  DesignSystem
//
//  Created by Giga Khizanishvili on 17.04.23.
//

import Domain
import SwiftUI

public struct MealCell: View {
    // MARK: - Public Properties
    public let meal: Meal

    // MARK: - Init
    public init(meal: Meal) {
        self.meal = meal
    }

    // MARK: - Init
    public init(
        name: String,
        description: String,
        price: Double,
        rating: Double,
        image: Image,
        isPopular: Bool
    ) {
        self.name = name
        self.description = description
        self.price = price
        self.rating = rating
        self.image = image
        self.isPopular = isPopular
    }

    // MARK: - Body
    public var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if meal.isPopular {
                TagView(for: .popular)
            }

            HStack(spacing: 24) {
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        titleComponent

                        descriptionComponent

                        priceComponent

                        RatingView(meal.rating)
                    }

                    Spacer(minLength: 0)
                }

                imageComponent
            }

            Divider()
        }
    }

    // MARK: - Components
    private var titleComponent: some View {
        Text(meal.name.uppercased())
            .bold()
            .lineLimit(1)
    }

    private var descriptionComponent: some View {
        Text(meal.description)
            .lineLimit(2)
            .font(.footnote)
    }

    private var priceComponent: some View {
        Text("\(meal.price) gel")
    }

    private var imageComponent: some View {
        meal.image
            .resizable()
            .frame(width: 170, height: 100)
            .background(Color.red)
            .cornerRadius(8)
    }
}

// MARK: - Preview
struct MealCell_Previews: PreviewProvider {
    static var previews: some View {
        MealCell(
            meal: .init(
                name: "ROYAL DOUBLE",
                description: "King chicken, big king, onion tings, big fries, mini auce, coca-cola 1L.",
                rating: 0.78,
                price: 123.45,
                image: DesignSystem.Image.burger,
                ingredients: [],
                isVegetarian: false,
                isVegan: false,
                isGlutenFree: false,
                isPopular: true,
                isSpicy: true,
                allergens: []
            )
        )
        .padding()
    }
}
