//
//  File.swift
//  DesignSystem
//
//  Created by Giga Khizanishvili on 17.04.23.
//

import SwiftUI

// TODO: change `string` after common module creation
public enum Tag: String {
    case popular
}

extension Tag {
    var color: Color {
        switch self {
        case .popular:
            return .pink // TODO: change color
        }
    }

    var icon: Image {
        switch self {
        case .popular:
            return DesignSystem.Image.Star.unfilled
        }
    }
}
