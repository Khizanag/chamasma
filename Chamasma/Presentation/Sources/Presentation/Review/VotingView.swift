//
//  SwiftUIView.swift
//  
//
//  Created by Giga Khizanishvili on 12.05.23.
//

import SwiftUI

struct VotingView: View {
    let likes: Int
    let dislikes: Int

    // MARK: - Body
    var body: some View {
        HStack {
            likeButton

            dislikeButton
        }
    }

    // MARK: - Components
    private var likeButton: some View {
        Button(action: {

        }, label: {
            Label(title: {

            }, icon: {

            })
        })
    }

    private var dislikeButton: some View {
        EmptyView()
    }
}

// MARK: - Preview
struct VotingView_Previews: PreviewProvider {
    static var previews: some View {
        VotingView(likes: 123, dislikes: 98)
    }
}
