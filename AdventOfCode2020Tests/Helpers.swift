//
//  Helpers.swift
//  AdventOfCode2020Tests
//
//  Created by 游宗諭 on 2020/12/2.
//

import XCTest


extension XCTestCase {
    func getFileString(_ name: String) throws -> String{
        let url = try XCTUnwrap(Bundle(for: Self.self).url(forResource: name, withExtension: "input"))
        let data = try Data(contentsOf: url)
        return try XCTUnwrap(String(data: data, encoding: .utf8))
    }
    
}
extension Character {
    static let newLine:Character = "\n"
}
