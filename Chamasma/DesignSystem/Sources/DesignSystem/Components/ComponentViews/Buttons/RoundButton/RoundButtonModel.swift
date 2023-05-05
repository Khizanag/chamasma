//
//  RoundButtonModel.swift
//
//
//  Created by Mariam Ormotsadze on 05.05.23.
//

import Common
import SwiftUI

struct RoundButtonModel {
    let image: RoundButtonImage
    let state: RoundButtonState
    let size: RoundButtonSize

    init(
        image: RoundButtonImage,
        state: RoundButtonState,
        size: RoundButtonSize
    ) {
        self.image = image
        self.state = state
        self.size = size
    }
}

extension RoundButtonModel {
    enum RoundButtonImage {
        case plus
        case search
        case backArrow
        case close

        var name: Image {
            switch self {
            case .plus:
                return Image(systemName: "plus")
            case .search:
                return Image(systemName: "magnifyingglass")
            case .backArrow:
                return Image(systemName: "arrow.backward")
            case .close:
                return Image(systemName: "xmark")
            }
        }
    }

    enum RoundButtonState {
        case filled
        case clear

        var backgroundColor: Color {
            switch self {
            case .filled:
                return Color(hex: "4ED199") ?? .black
            case .clear:
                return .clear
            }
        }

        var foregroundColor: Color {
            switch self {
            case .filled:
                return .white
            case .clear:
                return Color(hex: "4ED199") ?? .black
            }
        }
    }

    enum RoundButtonSize {
        case large
        case normal

        var value: CGFloat {
            switch self {
            case .large:
                return 100
            case .normal:
                return 40
            }
        }

        var font: CGFloat {
            switch self {
            case .large:
                return 50
            case .normal:
                return 20
            }
        }
    }
}
