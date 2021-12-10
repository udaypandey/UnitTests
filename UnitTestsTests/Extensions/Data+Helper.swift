//
//  Data+Helper.swift
//  UnitTestsTests
//
//  Created by Uday Pandey on 10/12/2021.
//

import Foundation

extension Data {
    func model<T: Decodable>(for type: T.Type) -> T? {
        // Intentionally written in verbose way to catch and print
        // any parse issues and print them while writing test
        // case.
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: self)
        } catch {
            NSLog("Model Parse error: \(error)")
        }
        // return try? JSONDecoder().decode(T.self, from: self)
        return nil
    }

    static func modelData<T: Encodable>(for value: T) -> Data? {
        // Intentionally written in verbose way to catch and print
        // any parse issues and print them while writing test
        // case.
        do {
            let encoder = JSONEncoder()
            return try encoder.encode(value)
        } catch {
            NSLog("Model Parse error: \(error)")
        }

        return nil
    }
}

