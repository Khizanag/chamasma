//
//  MealCell.swift
//  DesignSystem
//
//  Created by Giga Khizanishvili on 17.04.23.
//

import SwiftUI

public struct MealCell: View {
    // MARK: - Properties
    public let name: String
    public let description: String
    public let price: Double
    public let rating: Double
    public let image: Image
    public let isPopular: Bool

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
            if isPopular {
                TagView(for: .popular)
            }

            HStack(spacing: 24) {
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        titleComponent

                        descriptionComponent

                        priceComponent

                        RatingView(rating)
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
        Text(name.uppercased())
            .bold()
            .lineLimit(1)
    }

    private var descriptionComponent: some View {
        Text(description)
            .lineLimit(2)
            .font(.footnote)
    }

    private var priceComponent: some View {
        Text("\(price) gel")
    }

    private var imageComponent: some View {
        image
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
            name: "ROYAL DOUBLE",
            description: "King chicken, big king, onion tings, big fries, mini auce, coca-cola 1L.",
            price: 123.45,
            rating: 0.78,
            image: DesignSystem.Image.burger,
            isPopular: true
        )
        .padding()
    }
}
