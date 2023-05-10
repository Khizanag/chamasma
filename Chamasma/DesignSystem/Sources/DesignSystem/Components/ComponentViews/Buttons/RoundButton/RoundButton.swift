//
//  RoundButton.swift
//
//
//  Created by Mariam Ormotsadze on 05.05.23.
//

import Common
import SwiftUI

struct RoundButton: View {
    let model: RoundButtonModel

    init(model: RoundButtonModel) {
        self.model = model
    }

    var body: some View {
        Button {
            print("Round Button clicked") // TODO: discuss and add action into model
        } label: {
            model.image.name
                .frame(width: model.size.value, height: model.size.value)
                .font(.system(size: model.size.fontSize))
                .foregroundColor(model.state.foregroundColor)
                .background(model.state.backgroundColor)
                .clipShape(Circle())
        }
    }
}

private extension RoundButtonImage {
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

private extension RoundButtonState {
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

private extension RoundButtonSize {
    var value: CGFloat {
        switch self {
        case .large:
            return 100
        case .normal:
            return 40
        }
    }

    var fontSize: CGFloat {
        switch self {
        case .large:
            return 50
        case .normal:
            return 20
        }
    }
}

struct RoundButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundButton(
            model: .init(
                image: .plus,
                state: .filled,
                size: .normal
            )
        )
    }
}
