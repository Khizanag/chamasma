//
//  OrderButton.swift
//
//
//  Created by Mariam Ormotsadze on 10.05.23.
//

import Common
import SwiftUI

struct OrderButton: View {
    var body: some View {
        HStack {
            HStack {
                Text("1")
                  .padding(8)
                  .background(.white)
                  .clipShape(Circle())
                  .foregroundColor(.green)
                Text("View Order")
                Spacer()
                Text("40.00 $")
            }
            .foregroundColor(.white)
            .padding(.leading, 24)
            .padding(.trailing, 24)
            .padding(.vertical, 16)
        }
        .frame(height: 64)
        .frame(maxWidth: .infinity)
        .background(Color(hex: "4ED199"))
        .cornerRadius(8)
        .padding(.leading, 24)
        .padding(.trailing, 24)
    }
}

struct OrderButton_Previews: PreviewProvider {
    static var previews: some View {
        OrderButton()
    }
}
