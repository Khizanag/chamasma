//
//  Builder.swift
//  
//
//  Created by Giga Khizanishvili on 21.04.23.
//

public protocol Builder {
    associatedtype Structure

    func reset() -> Self
    func build() -> Structure
}
