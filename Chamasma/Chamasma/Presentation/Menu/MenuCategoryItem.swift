//
//  MenuView.swift
//  Chamasma
//
//  Created by Giga Khizanishvili on 16.04.23.
//

import DesignSystem
import SwiftUI

struct MenuCategoryItem: View {
    let image: Image
    let title: String

    // MARK: - Body
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .overlay {
                Color.black
                    .opacity(0.3)
            }
            .overlay(alignment: .bottom) {
                Text(title)
                    .padding(8)
                    .frame(maxWidth: .infinity)
                    .background(Color.white.opacity(0.8))
                    .offset(y: -20)
            }
            .cornerRadius(10)
    }
}

// MARK: - Preview
struct MenuCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        MenuCategoryItem(image: DesignSystem.Image.burger, title: "BURGER")
            .padding()
    }
}
