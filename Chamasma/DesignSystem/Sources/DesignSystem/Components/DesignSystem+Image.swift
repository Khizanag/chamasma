//
//  DesignSystem+Image.swift
//  DesignSystem
//
//  Created by Giga Khizanishvili on 14.04.23.
//

import SwiftUI

public extension DesignSystem {
    enum Image {
        public static let burger = SwiftUI.Image("burger")
        public static let leafFilled = SwiftUI.Image(systemName: "leaf.fill")
        public static let plus = SwiftUI.Image(systemName: "plus")
        public static let magnifyingGlass = SwiftUI.Image(systemName: "magnifyingglass")
        public static let arrowBackward = SwiftUI.Image(systemName: "arrow.backward")
        public static let xMark = SwiftUI.Image(systemName: "xmark")

        public enum Star {
            public static let unfilled = SwiftUI.Image(systemName: "star")
            public static let filled = SwiftUI.Image(systemName: "star.fill")
            public static let leadingHalfFilled = SwiftUI.Image(systemName: "star.leadinghalf.filled")
        }

        public enum AdditionalInfo {
            public static let vegan = SwiftUI.Image("vegan")
            public static let vegetarian = SwiftUI.Image("vegetarian")
            public static let glutenFree = SwiftUI.Image("gluten_free")
            public static let spicy = SwiftUI.Image("spicy")
        }
    }
}
