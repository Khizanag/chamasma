//
//  File.swift
//  DesignSystem
//
//  Created by Giga Khizanishvili on 17.04.23.
//

import Common
import SwiftUI

public enum Tag: NameProvider {
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
