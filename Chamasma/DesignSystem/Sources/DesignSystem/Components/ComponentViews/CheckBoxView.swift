//
//  CheckBoxView.swift
//
//
//  Created by Mariam Ormotsadze on 05.05.23.
//

import Common
import SwiftUI

struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Button(
            action: {
                self.checked.toggle()
            },
            label: {
                Image(systemName: checked ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color(hex: "4ED199"))
            }
        )
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false

        var body: some View {
            CheckBoxView(checked: $checked)
        }
    }

    static var previews: some View {
        CheckBoxViewHolder()
    }
}
