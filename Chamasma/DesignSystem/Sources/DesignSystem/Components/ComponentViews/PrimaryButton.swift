//
//  PrimaryButton.swift
//
//
//  Created by Giga Khizanishvili on 02.06.23.
//

import SwiftUI

public struct PrimaryButton: View {
    // MARK: - Properties
    let icon: Image?
    let title: String
    let action: () -> Void

    // MARK: - Init
    public init(icon: Image? = nil, title: String, action: @escaping () -> Void) {
        self.icon = icon
        self.title = title
        self.action = action
    }

    // MARK: - Body
    public var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Spacer()

                if let icon {
                    icon
                }

                Text(title)
                    .contentShape(Rectangle())

                Spacer()
            }
            .foregroundColor(.white)
            .padding()
            .contentShape(Rectangle())
        }
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .cornerRadius(10)
        .contentShape(Rectangle())
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.clear)
                .background(Color.clear)
        )
    }
}
