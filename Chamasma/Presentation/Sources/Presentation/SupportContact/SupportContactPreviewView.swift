//
//  SupportContactPreviewView.swift
//
//
//  Created by Giga Khizanishvili on 03.07.23.
//

import SwiftUI

struct SupportContactPreviewView: View {
    // MARK: - Properties
    @State private var isSupportContactViewPresented = false

    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea([.top, .leading, .trailing])

            VStack(alignment: .center, spacing: 16) {
                Text("If you have any questions or issues, our support team is always (24/7) ready to help you. You have to just ask them what you want.")
                    .multilineTextAlignment(.center)

                Text("To contact support using messenger")
                    .multilineTextAlignment(.center)
                    .font(.callout)

                Button("Click here") {
                    isSupportContactViewPresented = true
                }
                .navigationDestination(isPresented: $isSupportContactViewPresented) {
                    SupportContactView()
                }
            }
            .padding()
        }
    }
}

// MARK: - Previews
struct SupportContactPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        SupportContactPreviewView()
    }
}
