//
//  VotingItemView.swift
//
//
//  Created by Giga Khizanishvili on 28.06.23.
//

import SwiftUI

struct VotingItemView: View {
    // MARK: - Properties
    let style: Style
    var count: Int
    @Binding var isActive: Bool

    // MARK: - Body
    var body: some View {
        Button(
            action: {
                withAnimation {
                    isActive.toggle()
                }
            },
            label:  {
                Label(
                    title: {
                        Text(
                            (isActive ? (count + 1) : count).stringValue
                        )
                        .foregroundStyle(Color(hex: "646464")!)
                    },
                    icon: {
                        Image(systemName: style.imageSystemName)
                            .foregroundColor(
                                (isActive) ? style.color : Style.neutralStateColor
                            )
                            .font(.system(size: 24))
                            .scaleEffect(isActive ? 1.1 : 1)
                    }
                )
            }
        )
    }
}

// MARK: - Style
extension VotingItemView {
    enum Style {
        case like
        case dislike

        var color: Color {
            switch self {
            case .like:
                return .init(hex: "6D9FEB")!
            case .dislike:
                return .init(hex: "F78F8E")!
            }
        }

        var imageSystemName: String {
            switch self {
            case .like:
                return "hand.thumbsup.fill"
            case .dislike:
                return "hand.thumbsdown.fill"
            }
        }

        static var neutralStateColor: Color {
            .init(hex: "9EA2AC")!.opacity(0.3)
        }
    }
}

// MARK: - Preview
struct VotingItemView_Previews: PreviewProvider {
    static var previews: some View {
        VotingItemView(
            style: .like,
            count: 20,
            isActive: .init(get: { true }, set: { _ in })
        )
    }
}
