//
//  User.swift
//
//
//  Created by Giga Khizanishvili on 28.06.23.
//

import Foundation
import LoremSwiftum

struct User {
    let firstName: String
    let lastName: String

    var fullName: String {
        firstName + " " + lastName
    }
}

// MARK: - Example
extension User {
    static let example = User(firstName: Lorem.firstName, lastName: Lorem.lastName)
}
