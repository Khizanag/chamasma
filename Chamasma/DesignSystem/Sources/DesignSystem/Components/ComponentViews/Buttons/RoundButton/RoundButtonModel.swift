//
//  RoundButtonModel.swift
//
//
//  Created by Mariam Ormotsadze on 05.05.23.
//

import Common
import SwiftUI

struct RoundButtonModel {
    let image: RoundButtonImage
    let state: RoundButtonState
    let size: RoundButtonSize
}

public enum RoundButtonImage {
    case plus
    case search
    case backArrow
    case close
}

public enum RoundButtonState {
    case filled
    case clear
}

public enum RoundButtonSize {
    case large
    case normal
}
