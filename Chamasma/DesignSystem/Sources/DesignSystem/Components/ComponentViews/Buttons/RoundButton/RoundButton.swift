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
                .font(.system(size: model.size.font))
                .foregroundColor(model.state.foregroundColor)
                .background(model.state.backgroundColor)
                .clipShape(Circle())
        }
    }
}

struct RoundButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundButton(
            model: .init(
                image: .backArrow,
                state: .filled,
                size: .large
            )
        )
    }
}
