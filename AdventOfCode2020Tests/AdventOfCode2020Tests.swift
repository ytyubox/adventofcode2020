//
//  AdventOfCode2020Tests.swift
//  AdventOfCode2020Tests
//
//  Created by 游宗諭 on 2020/12/2.
//

import XCTest
class Day01 {
    func result(_ list:[Int]) -> Int {
        let const = 2020
        var cache = [Int: Int]()
        for (i, e) in list.enumerated() {
            cache[const - e] = i
            print(cache)
            if let f = cache[e] { return list[f] * e}
        }
        return 0
    }
}
final class Day01Tests: XCTestCase {
    func testSample() {
        let list = [1721,979,366,299,675,1456]
        XCTAssertEqual(Day01().result(list), 514579)
    }
    
    func testWithDataSet() throws {
        let name = "day01"
        let str = try getFileString(name)
        let list = str.split(separator: .newLine).compactMap{Int($0)}
        let sut = Day01()
        XCTAssertEqual(sut.result(list), 651651)
    }
}

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
