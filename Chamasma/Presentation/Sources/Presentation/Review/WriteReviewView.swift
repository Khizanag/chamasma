//
//  WriteReviewView.swift
//  
//
//  Created by Giga Khizanishvili on 13.05.23.
//

import DesignSystem
import SwiftUI

public struct WriteReviewView: View {
    @State private var rating = 5
    @State private var review = ""

    public init() { }

    // MARK: - Body
    public var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            VStack(alignment: .leading)  {
                Text("Rating")
                    .font(.title2)

                Picker("Choose Rating", selection: $rating) {
                    ForEach(1...5, id: \.self) { numStars in
                        makeStarLine(numStars)
                    }
                }
                .pickerStyle(.navigationLink)
            }

            VStack(alignment: .leading) {
                Text("Write a review")
                    .font(.title2)

                TextField("Share your experience...", text: $review, axis: .vertical)
                    .multilineTextAlignment(.leading)
                    .lineLimit(4...10)
                    .padding()
                    .background(Color(hex: "F7F8FA"))
                    .cornerRadius(10)
            }

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

    private func makeStarLine(_ count: Int) -> some View {
        HStack {
            ForEach(1...count, id: \.self) { _ in
                Image(systemName: "star.fill")
            }
            .foregroundColor(.yellow)

            Spacer()
        }
        .tag(count)
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
