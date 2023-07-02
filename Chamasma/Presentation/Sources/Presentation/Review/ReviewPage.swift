//
//  ReviewPage.swift
//
//
//  Created by Giga Khizanishvili on 12.05.23.
//

import SwiftUI

struct ReviewPage: View {
    // MARK: - Properties
    @State private var selectedPage = 0
    @State private var isReviewViewPresented = false
    @State private var isEnterReviewViewPresented = false

    // MARK: - Body
    var body: some View {
        VStack(spacing: 16) {
            Picker("Options", selection: $selectedPage) {
                Text("Description")
                    .padding()
                    .tag(0)

                Text("Reviews")
                    .padding()
                    .tag(1)
            }

            .pickerStyle(SegmentedPickerStyle())
            .foregroundStyle(Color.green)
            .tint(.yellow)
            .accentColor(.brown)
            .padding(-4)
            .background(Color.red)

            Button("Review View") {
                isReviewViewPresented = true
            }
            .navigationDestination(isPresented: $isReviewViewPresented) {
                ReviewView(review: .example)
            }

            Button("Enter review") {
                isEnterReviewViewPresented = true
            }
            .navigationDestination(isPresented: $isEnterReviewViewPresented) {
                WriteReviewView(viewModel: WriteReviewViewModel())
            }
        }
    }
}

// MARK: - Preview
struct ReviewPage_Previews: PreviewProvider {
    static var previews: some View {
        ReviewPage()
    }
}
