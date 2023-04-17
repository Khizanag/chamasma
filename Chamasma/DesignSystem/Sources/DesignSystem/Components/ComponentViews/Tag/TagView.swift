//
//  SwiftUIView.swift
//  DesignSystem
//
//  Created by Giga Khizanishvili on 17.04.23.
//

import SwiftUI

public struct TagView: View {
    // MARK: - Properties
    public let tag: Tag

    // MARK: - Init
    public init(for tag: Tag) {
        self.tag = tag
    }

    // MARK: - Body
    public var body: some View {
        Label(
            title: {
                Text(tag.rawValue.uppercased())
            },
            icon: {
                tag.icon
            }
        )
        .font(.footnote)
        .bold()
        .foregroundColor(.white)
        .padding(6)
        .background(tag.color)
        .cornerRadius(12)
    }
}

// MARK: - Preview
struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(for: .popular)
    }
}
