//
//  RoundButtonModel.swift
//
//
//  Created by Mariam Ormotsadze on 05.05.23.
//

import Common
import SwiftUI

// MARK: - RoundButtonModel
struct RoundButtonModel {
    let image: RoundButtonImage
    let state: RoundButtonState
    let size: RoundButtonSize
}

// MARK: - RoundButtonImage
public enum RoundButtonImage {
    case plus
    case search
    case backArrow
    case close
}

// MARK: - RoundButtonState
public enum RoundButtonState {
    case filled
    case clear
}

// MARK: - RoundButtonSize
public enum RoundButtonSize {
    case large
    case normal
}
