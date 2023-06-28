//
//  ReviewPage.swift
//  
//
//  Created by Giga Khizanishvili on 12.05.23.
//

import SwiftUI

struct ReviewPage: View {
    @State var selectedPage = 0
    var body: some View {

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

//        headerView
//
//        titleView
//
//        reviewsView
//
//        submitButton
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
