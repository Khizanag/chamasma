//
//  RatingView.swift
//  DesignSystem
//
//  Created by Giga Khizanishvili on 17.04.23.
//

import SwiftUI

public struct RatingView: View {
    // MARK: - Properties
    public let rating: Double

    private let digitsAfterComma = 2
    private let minRatingForFullStar: Double = 4
    private let maxRating: Double = 5

    // MARK: - Init
    public init(_ rating: Double) {
        self.rating = Self.scaledRating(rating, to: maxRating, digitsAfterComma: digitsAfterComma)
    }

    // MARK: - Body
    public var body: some View {
        HStack(spacing: 8) {
            starComponent

            labelComponent
        }
    }

    private var starComponent: some View {
        starImage
            .foregroundColor(.yellow)
    }

    private var starImage: some View {
        let star = DesignSystem.Image.Star.self

        return rating >= minRatingForFullStar ? star.filled : star.leadingHalfFilled
    }

    private var labelComponent: some View {
        Text(rating.toString(digitsAfterComma: 1))
    }

    // MARK: - Static
    // TODO: fix bug of 0.79 for example, that is written as 4.0
    /// Rating should be a value in 0...1
    private static func scaledRating(
        _ rating: Double,
        to maxValue: Double,
        digitsAfterComma: Int
    ) -> Double {
        guard (0...1).contains(rating) else { fatalError("Rating should be in 0...1 range") }

        return rating * maxValue
    }
}

// MARK: - Double
// TODO: Move to Extensions after Module is created
 private extension Double {
     /// `digitsAfterComma + 1`, and the `dropLast` is used to avoid rounding up in some cases
     ///     for example, `0.79.toString(digitsAfterComma: 1)` must not return 0.8
     func toString(digitsAfterComma: Int) -> String {
         String(
            String(format: "%.\(digitsAfterComma + 1)f", self).dropLast(1)
         )
     }
 }

// MARK: - Previews
struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(0.79)
    }
}
