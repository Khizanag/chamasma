//
//  DesignSystemBundle.swift
//
//
//  Created by Giga Khizanishvili on 02.06.23.
//

import Foundation

public final class DesignSystemBundle {
    public static let current = Bundle(for: type(of: DesignSystemBundle().self))

    private init() { }
}
