//
//  CategoryView.swift
//  Chamasma
//
//  Created by Mariam Ormotsadze on 22.04.23.
//

import DesignSystem
import SwiftUI

public struct CategoryView: View {
    // MARK: - Properties
    public let title: String
    // TODO: pass [CategoryItemModel] when MealCell will be refactored to take model not properties
    // MARK: - Body
    public var body: some View {
        ScrollView {
            VStack {
                header
                categoryItemList
            }
        }
    }
    private var header: some View {
        VStack {
            imageHeader
            ListSectionHeader(title: title)
        }
    }
    private var imageHeader: some View {
        DesignSystem.Image.burger
            .resizable()
            .frame(height: 160)
            .cornerRadius(8)
    }
    private var categoryItemList: some View {
        VStack(alignment: .leading) {
            ForEach((1...10), id: \.self) { _ in // TODO: will iterate given array
                MealCell(
                    name: "Cheesburger",
                    description: "Cheesburger, Regular Bun, ketchup, pickle",
                    price: 123.45,
                    rating: 0.78,
                    image: DesignSystem.Image.burger,
                    isPopular: true
                )
            }
        }
    }
}

// MARK: - Preview
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            CategoryView(title: "Burger")
                .padding()
        }
        .ignoresSafeArea()
    }
}
