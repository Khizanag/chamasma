//
//  DesignSystem+Color.swift
//  DesignSystem
//
//  Created by Giga Khizanishvili on 14.04.23.
//

import Common
import SwiftUI

public extension DesignSystem {
    enum Color {
        case hexE17E76
        case hexE3BAA8
        case hexAA7B6F
        case hexFED797
        case hex2E8364

        case hex4ED199
        case hex41E3A2
        case hex4ABF90
        case hexBBD8CB
        case hexFFBC10
        case hex6D9FEB
        case hexFA3030
        case hex646464
        case hex202020
        case hexF78F8E

        // MARK: - Additional colors
        case hex9EA2AC

        public func callAsFunction() -> SwiftUI.Color {
            SwiftUI.Color(
                name.dropFirst(3).toString(), // removing "hex"
                bundle: .module
            )
        }
    }
}

extension DesignSystem.Color: NameProvider { }
