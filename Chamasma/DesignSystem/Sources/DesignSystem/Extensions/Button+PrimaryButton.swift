//
//  Button+PrimaryModifier.swift
//  
//
//  Created by Giga Khizanishvili on 02.06.23.
//

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.blue)
            .font(.title)
            .padding()
            .background(Color.yellow)
            .cornerRadius(8)
    }
}

extension Button {
    func makePrivateButton() -> some View {
        modifier(PrimaryButtonModifier())
    }
}
