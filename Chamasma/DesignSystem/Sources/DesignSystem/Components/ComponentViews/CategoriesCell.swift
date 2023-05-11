//
//  CategoriesCell.swift
//
//
//  Created by Mariam Ormotsadze on 24.04.23.
//

import SwiftUI

public struct CategoriesCell: View {
    // MARK: - Properties
    public let title: String
    public var isSelected: Bool

    public init(title: String, isSelected: Bool) {
        self.title = title
        self.isSelected = isSelected
    }

    // MARK: - Body
    public var body: some View {
        DesignSystem.Image.burger
            .resizable()
            .frame(width: 160, height: 150)
            .cornerRadius(10)
            .overlay(
                HStack {
                    Text(title.uppercased())
                        .padding(.leading, 46)
                        .padding(.vertical, 5)

                    Spacer()
                }
                    .background(Color.white.opacity(0.8))
                    .frame(height: 25)
                    .frame(maxWidth: .infinity),
                alignment: .center
            )
            .opacity(isSelected ? 1 : 0.5)
    }
}

// MARK: - Preview
struct CategoriesCell_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray

            CategoriesCell(
                title: "Burger",
                isSelected: false
            )
                .padding()
        }
        .ignoresSafeArea()
    }
}
