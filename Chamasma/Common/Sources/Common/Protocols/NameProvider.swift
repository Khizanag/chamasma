//
//  NameProvider.swift
//  
//
//  Created by Giga Khizanishvili on 17.04.23.
//

// MARK: - Protocol
public protocol NameProvider {
    var name: String { get }
}

// MARK: - Extension
public extension NameProvider {
    var name: String {
        String(reflecting: self).capitalized
    }
}
