//
//  ReviewView.swift
//
//
//  Created by Giga Khizanishvili on 12.05.23.
//

import DesignSystem
import SwiftUI

struct ReviewView: View {
    // MARK: - Properties
    let review: Review

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "person.circle.fill")
                    .foregroundColor(.gray)
                    .font(.largeTitle)

                VStack(alignment: .leading) {
                    Text(review.author.fullName)
                        .foregroundColor(DesignSystem.Color.hex4ED199())
                        .font(.headline)

                    Text(review.date.description)
                        .font(.caption)
                        .foregroundStyle(
                            DesignSystem.Color.hex646464()
                                .opacity(0.8)
                        )
                }

                Spacer()

                RatingView(0.89)
            }

            Text(review.description)
                .font(.footnote)
                .foregroundStyle(DesignSystem.Color.hex646464())

            HStack {
                Spacer()

                VotingView(
                    likes: review.numLikes,
                    dislikes: review.numDislikes,
                    state: .disliked // FIXME: set appropriate state
                )
            }

            Divider()
        }
        .padding(.horizontal)
    }
}

// MARK: - Preview
struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView(review: .example)
    }
}
