//
//  MenuCategoryItem.swift
//  Chamasma
//
//  Created by Giga Khizanishvili on 16.04.23.
//

import DesignSystem
import SwiftUI

struct MenuView: View {
    let categories: [MenuCategory]

    // MARK: - Body
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: [.init(spacing: 24), .init(spacing: 24)],
                spacing: 24
            ) {
                ForEach(categories) { category in
                    MenuCategoryItem(image: category.image, title: category.name)
                }
            }
            .padding()
        }
    }
}

// MARK: - Previews
struct MenuViewPreviews: PreviewProvider {
    static var previews: some View {
        MenuView(categories: (1...16).map { _ in MenuCategory.example })
    }
}
