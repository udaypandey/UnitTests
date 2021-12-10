//
//  User.swift
//  UnitTests
//
//  Created by Uday Pandey on 10/12/2021.
//

import Foundation

public typealias UserIdentifier = String

struct User: Codable, Equatable {
    let userId: UserIdentifier

    let firstName: String
    let lastName: String
    let email: String

    private enum CodingKeys: String, CodingKey {
        case userId = "user_id"

        case firstName = "first_name"
        case lastName = "last_name"
        case email
    }
}

