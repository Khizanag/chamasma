//
//  Button+PrimaryModifier.swift
//
//
//  Created by Giga Khizanishvili on 02.06.23.
//

import SwiftUI

// TODO: Fix so that it is clickable on the whole width
struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .contentShape(Rectangle())
            .font(.title3)
            .foregroundColor(.white)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(DesignSystem.Color.hex4ED199())
            .contentShape(Rectangle())
            .frame(maxWidth: .infinity)
            .cornerRadius(10)
    }
}

public extension Button {
    func makePrimary() -> some View {
        modifier(PrimaryButtonModifier())
    }
}
