//
//  XCTestcase+Helper.swift
//  UnitTestsTests
//
//  Created by Uday Pandey on 10/12/2021.
//

import Foundation
import XCTest

extension XCTestCase {
    func data(from fileName: String, withExtension ext: String?) -> Data? {
        let bundle = Bundle(for: type(of: self))

        guard let url = bundle.url(forResource: fileName, withExtension: ext) else {
            return nil
        }

        return try? Data(contentsOf: url)
    }

    func model<T: Decodable>(_ type: T.Type, fileName: String) -> T? {
        guard let data = data(from: fileName, withExtension: "json") else {
            return nil
        }

        return data.model(for: type)
    }
}
