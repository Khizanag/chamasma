//
//  Menu.swift
//  Domain
//
//  Created by Giga Khizanishvili on 15.04.23.
//

import SwiftUI

public struct Menu {
    public let name: String
    public let description: String
    public let image: Image
    public let categories: [MenuCategory]

    public init(
        name: String,
        description: String,
        image: Image,
        categories: [MenuCategory]
    ) {
        self.name = name
        self.description = description
        self.image = image
        self.categories = categories
    }
}
