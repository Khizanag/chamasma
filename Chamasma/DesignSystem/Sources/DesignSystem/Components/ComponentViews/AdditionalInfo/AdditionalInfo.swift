//
//  AdditionalInfo.swift
//
//
//  Created by Mariam Ormotsadze on 05.05.23.
//

import SwiftUI

struct AdditionalInfo: View {
    let model: AdditionalInfoModel

    var body: some View {
        Label(
            title: {
                Text(model.state.title)
                    .foregroundColor(Color(hex: "646464"))
            }, icon: {
                model.state.image
                    .renderingMode(.template)
                    .accessibility(hidden: true)
                    .foregroundColor(model.state.color)
            }
        )
    }
}

private extension AdditionalInfoState {
    var title: String {
        String(describing: self).capitalized
    }

    var color: Color {
        switch self {
        case .vegan:
            return Color(hex: "41E3A2") ?? .black
        case .vegetarian:
            return Color(hex: "4AD179") ?? .black
        case .glutenFree:
            return Color(hex: "FFBC5B") ?? .black
        case .spicy:
            return Color(hex: "FA3030") ?? .black
        }
    }

    var image: Image {
        switch self {
        case .vegan:
            return DesignSystem.Image.AdditionalInfo.vegan
        case .vegetarian:
            return DesignSystem.Image.AdditionalInfo.vegetarian
        case .glutenFree:
            return DesignSystem.Image.AdditionalInfo.glutenFree
        case .spicy:
            return DesignSystem.Image.AdditionalInfo.spicy
        }
    }
}

struct AdditionalInfo_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AdditionalInfo(model: .init(state: .vegan))
            AdditionalInfo(model: .init(state: .vegetarian))
            AdditionalInfo(model: .init(state: .glutenFree))
            AdditionalInfo(model: .init(state: .spicy))
        }
    }
}
