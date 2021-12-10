//
//  UnitTestsTests.swift
//  UnitTestsTests
//
//  Created by Uday Pandey on 10/12/2021.
//

import XCTest
@testable import UnitTests

class UnitTestsTests: XCTestCase {
//    func testExample() throws {
////        let user = User(userId: "", firstName: "", lastName: "", email: "uday.pandey@gmail.com")
//
//        let bundle = Bundle(for: type(of: self))
//
//        let url = bundle.url(forResource: "UserTests", withExtension: "json")!
//        let data = try! Data(contentsOf: url)
//
//        let decoder = JSONDecoder()
//        let user = try! decoder.decode(User.self, from: data)
//
//        XCTAssertNotNil(user, "Invalid instance")
//        XCTAssertNotNil(user.userId)
//        XCTAssertEqual("Robert", user.firstName)
//        XCTAssertEqual("Jordan", user.lastName)
//        XCTAssertEqual("robert.jordan@gmail.com", user.email)
//    }

    func testUser() {
        guard let user = model(User.self, fileName: "UserTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(user, "Invalid instance")
        XCTAssertNotNil(user.userId)
        XCTAssertEqual("Robert", user.firstName)
        XCTAssertEqual("Jordan", user.lastName)
        XCTAssertEqual("robert.jordan@gmail.com", user.email)
    }

}
