//
//  WriteReviewView.swift
//  
//
//  Created by Giga Khizanishvili on 13.05.23.
//

import DesignSystem
import SwiftUI

struct WriteReviewView: View {
    @State private var rating = ""
    @State private var review = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            TitleLabel("Write a review")

            Text("Rating")
            TextField("Choose rating", text: $rating)
                .padding()
                .background(Color(hex: "F7F8FA"))

            Text("Write a review")

            TextField("Share your experience...", text: $review, axis: .vertical)
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                .padding()
                .frame(height: 220)
                .background(Color(hex: "F7F8FA"))

            Spacer()

            
        }
        .padding([.horizontal, .top], 16)
    }
}

// MARK: - Preview
struct WriteReviewView_Previews: PreviewProvider {
    static var previews: some View {
        WriteReviewView()
    }
}
