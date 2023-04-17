//
//  ListSectionHeader.swift
//  DesignSystem
//
//  Created by Giga Khizanishvili on 16.04.23.
//

import SwiftUI

public struct ListSectionHeader: View {
    // MARK: - Properties
    public let title: String

    // MARK: - Body
    public var body: some View {
        HStack {
            Text(title.uppercased())
                .font(.title)
                .bold()
                .padding(.leading, 24)
                .padding(.vertical, 16)

            Spacer()
        }
        .background(Color.white.opacity(0.8))
        .frame(height: 64)
        .frame(maxWidth: .infinity)
        .cornerRadius(8)
    }
}

// MARK: - Preview
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue

            ListSectionHeader(title: "Title")
                .padding()
        }
        .ignoresSafeArea()
    }
}
