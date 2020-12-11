//
//  Helpers.swift
//  AdventOfCode2020Tests
//
//  Created by 游宗諭 on 2020/12/2.
//

import XCTest

extension XCTestCase {
    func inputOf(_ name: String) throws -> String {
        let url = try XCTUnwrap(Bundle(for: Self.self).url(forResource: name, withExtension: "input"))
        let data = try Data(contentsOf: url)
        return try XCTUnwrap(String(data: data, encoding: .utf8))
    }
}

extension Character {
    static let newLine: Character = "\n"
    static let space: Character = " "
}

extension String {
    func lined() -> [String] {
        split(.newLine).map(\.description)
    }

    func split(_ char: Character) -> [String] {
        split(separator: char).map(\.description)
    }

    var characters: [Character] {
        map { $0 }
    }
}

func stoRange(_ str: String) -> ClosedRange<Int> {
    let c: Character = "-"
    let l = str.split(c).compactMap(Int.init)
    return l[0] ... l[1]
}
