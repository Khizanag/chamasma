//
//  CategoryView.swift
//  Chamasma
//
//  Created by Mariam Ormotsadze on 22.04.23.
//

import DesignSystem
import Domain
import SwiftUI

public struct CategoryView: View {
    // MARK: - Properties
    public let title: String
    public let meals: [Meal]

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
            ForEach(meals) { meal in
                MealCell(meal: meal)
            }
        }
    }
}

// MARK: - Preview
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            CategoryView(
                title: "Burger",
                meals: Meal.Example.all
            )
                .padding()
        }
        .ignoresSafeArea()
    }
}
