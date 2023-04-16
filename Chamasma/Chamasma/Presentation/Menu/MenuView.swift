//
//  MenuView.swift
//  Chamasma
//
//  Created by Giga Khizanishvili on 16.04.23.
//

import DesignSystem
import SwiftUI

struct MenuView: View {
    let image: Image
    let title: String

    // MARK: - Body
    var body: some View {
            image
                .resizable()
                .frame(
                    width: Constant.Image.width,
                    height: Constant.Image.height
                )
                .scaledToFit()
                .overlay {
                    Color.black
                        .opacity(0.3)
                }
                .overlay(alignment: .bottom) {
                    ZStack {
                        Color.white
                            .opacity(Constant.Title.Background.opacity)
                            .frame(height: Constant.Title.Background.height)

                        Text(title)
                    }
                    .offset(y: -20)
                }
                .cornerRadius(10)
    }
}

// MARK: - Constants
extension MenuView {
    enum Constant {
        enum Image {
            static let width: CGFloat = 160
            static let height: CGFloat = 150
        }

        enum Title {
            enum Background {
                static let opacity = 0.8
                static let height: CGFloat = 24
            }
        }
    }
}

// MARK: - Preview
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(image: DesignSystem.Image.burger, title: "BURGER")
    }
}
