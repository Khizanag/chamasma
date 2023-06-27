//
//  WriteReviewView.swift
//  
//
//  Created by Giga Khizanishvili on 13.05.23.
//

import DesignSystem
import SwiftUI

public struct WriteReviewView: View {
    @State private var rating = ""
    @State private var review = ""

    public init() { }

    // MARK: - Body
    public var body: some View {
        VStack(alignment: .leading, spacing: 16) {


            Text("Rating")
            TextField("Choose rating", text: $rating)
                .padding()
                .background(Color(hex: "F7F8FA"))
                .cornerRadius(10)

            Text("Write a review")

            TextField("Share your experience...", text: $review, axis: .vertical)
                .multilineTextAlignment(.leading)
                .lineLimit(4...10)
                .padding()
                .background(Color(hex: "F7F8FA"))
                .cornerRadius(10)

            Spacer()

            Button("Submit", role: .destructive) {
                print("Submit")
            }
            .makePrimary()
            .padding(.bottom)
        }
        .padding([.horizontal, .top], 16)
        .navigationTitle("Write a review")
    }
}

// MARK: - Preview
struct WriteReviewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            WriteReviewView()
        }
    }
}
