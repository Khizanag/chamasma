//
//  Color+Extension.swift
//
//
//  Created by Mariam Ormotsadze on 04.05.23.
//

import SwiftUI
import UIKit

public extension Color {
    init?(hex: String) {
        let hexSanitized = hex
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        let red: CGFloat
        let green: CGFloat
        let blue: CGFloat
        let opacity: CGFloat

        let length = hexSanitized.count

        guard Scanner(string: hexSanitized).scanHexInt64(&rgb)
        else {
            return nil
        }

        if length == 6 {
            red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            blue = CGFloat(rgb & 0x0000FF) / 255.0
            opacity = 1.0
        } else if length == 8 {
            red = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            green = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            blue = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            opacity = CGFloat(rgb & 0x000000FF) / 255.0
        } else {
            return nil
        }

        self.init(red: red, green: green, blue: blue, opacity: opacity)
    }
}
