//
//  TitleLabel.swift
//
//
//  Created by Giga Khizanishvili on 13.05.23.
//

import Common
import SwiftUI

public struct TitleLabel: View {
    // MARK: - Properties
    private let title: String

    // MARK: - Init
    public init(_ title: String) {
        self.title = title
    }

    // MARK: - Body
    public var body: some View {
        HStack {
            Text(title)
                .foregroundColor(Color(hex: "202020") ?? .black)
                .font(.title)
            Spacer()
        }
    }
}

// MARK: - Preview
struct TitleLabel_Previews: PreviewProvider {
    static var previews: some View {
        TitleLabel("Example Title")
    }
}
