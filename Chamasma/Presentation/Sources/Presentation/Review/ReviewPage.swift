//
//  ReviewPage.swift
//  
//
//  Created by Giga Khizanishvili on 12.05.23.
//

import SwiftUI

struct ReviewPage: View {
    var body: some View {
        headerView

        titleView

        reviewsView

        submitButton
    }

    // MARK: - SubComponents
    private var headerView: some View {
        EmptyView()
    }

    private var titleView: some View {
        VStack {
            Divider()

            Divider()
        }
    }

    private var reviewsView: some View {
        EmptyView()
    }

    private var writeReviewView: some View {
        EmptyView()
    }

    private var submitButton: some View {
        Button("rame") {
            print("Button did tap")
        }
    }
}

// MARK: - Preview
struct ReviewPage_Previews: PreviewProvider {
    static var previews: some View {
        ReviewPage()
    }
}
