//
//  VotingView.swift
//
//
//  Created by Giga Khizanishvili on 12.05.23.
//

import SwiftUI

struct VotingView: View {
    // MARK: - Properties
    @State private var likes: Int
    @State private var dislikes: Int
    @State private var state: LikeState

    @State private var isLikeButtonActive: Bool
    @State private var isDislikeButtonActive: Bool

    // MARK: - Init
    init(likes: Int, dislikes: Int, state: LikeState) {
        self._likes = .init(initialValue: state == .liked ? (likes - 1) : likes)
        self._dislikes = .init(initialValue: state == .disliked ? (dislikes - 1) : dislikes)
        self._state = .init(initialValue: state)
        self._isLikeButtonActive = .init(initialValue: state == .liked)
        self._isDislikeButtonActive = .init(initialValue: state == .disliked)
    }

    // MARK: - Body
    var body: some View {
        HStack(spacing: 20) {
            likeButton

            dislikeButton
        }
    }

    // MARK: - Components
    private var likeButton: some View {
        VotingItemView(
            style: .like,
            count: likes,
            isActive: $isLikeButtonActive
        )
        .onChange(of: isLikeButtonActive) { isActive in
            guard isActive else { return }
            withAnimation {
                isDislikeButtonActive = false
            }
        }
    }

    private var dislikeButton: some View {
        VotingItemView(
            style: .dislike,
            count: dislikes,
            isActive: $isDislikeButtonActive
        )
        .onChange(of: isDislikeButtonActive) { isActive in
            guard isActive else { return }
            withAnimation {
                isLikeButtonActive = false
            }
        }
    }
}

// MARK: - State
extension VotingView {
    enum LikeState {
        case liked
        case disliked
        case neutral
    }
}

// MARK: - Preview
struct VotingView_Previews: PreviewProvider {
    static var previews: some View {
        VotingView(likes: 123, dislikes: 98, state: .liked)
    }
}
