//
//  Review.swift
//
//
//  Created by Giga Khizanishvili on 28.06.23.
//

import Foundation
import LoremSwiftum

struct Review {
    let author: User
    let rating: Double
    let description: String
    let numLikes: Int
    let numDislikes: Int
    let date: Date
}

// MARK: - Example
extension Review {
    static let example = Review(
        author: .example,
        rating: 0.7,
        description: Lorem.sentences(5),
        numLikes: 12,
        numDislikes: 7,
        date: .now
    )
}
