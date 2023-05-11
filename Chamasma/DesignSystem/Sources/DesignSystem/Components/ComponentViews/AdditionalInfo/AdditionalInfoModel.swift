//
//  AdditionalInfoModel.swift
//
//
//  Created by Mariam Ormotsadze on 06.05.23.
//

import Common
import SwiftUI

struct AdditionalInfoModel: Hashable {
    let state: AdditionalInfoState
}

public enum AdditionalInfoState: CaseIterable {
    case vegan
    case vegetarian
    case glutenFree
    case spicy
}
