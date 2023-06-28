//
//  ReviewView.swift
//
//
//  Created by Giga Khizanishvili on 12.05.23.
//

import DesignSystem
import SwiftUI

public struct ReviewView: View {
    // MARK: - Body
    public var body: some View {
        VStack(spacing: 12) {
            HStack {
                Image(systemName: "person.circle.fill")
                    .foregroundColor(.gray)
                    .font(.largeTitle)

                VStack(alignment: .leading) {
                    Text("Giga Khizanishvili")

                    Text("Oct 17, 2022")
                        .font(.footnote)
                        .foregroundStyle(
                            DesignSystem.Color.hex646464()
                                .opacity(0.8)
                        )
                }

                Spacer()

                RatingView(0.89)
            }

            Text(
                """
                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                """
            )
                .font(.footnote)
                .foregroundStyle(DesignSystem.Color.hex646464())

            HStack {
                Spacer()

                VotingView(likes: 215, dislikes: 24, state: .disliked)
            }

            Divider()
        }
        .padding(.horizontal)
    }
}

// MARK: - Preview
struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
