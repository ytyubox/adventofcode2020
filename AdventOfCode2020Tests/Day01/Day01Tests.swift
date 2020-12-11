//
//  AdventOfCode2020Tests.swift
//  AdventOfCode2020Tests
//
//  Created by 游宗諭 on 2020/12/2.
//

import XCTest
import AdventOfCode2020
class Day01 {
    func result(_ list:[Int]) -> Int {
        twoSum(list, 2020).reduce(1, *)
    }
    func result3(_ list: [Int]) -> Int {
        threeSum(list, 2020).flatMap{$0}.reduce(1, *)
    }
}
final class Day01Tests: XCTestCase {
    func testSample() {
        let list = [1721,979,366,299,675,1456]
        XCTAssertEqual(Day01().result(list), 514579)
    }
    func test2() {
        let list = [1721,979,366,299,675,1456]
        XCTAssertEqual(threeSum(list, 2020), [[979, 366, 675].sorted()])
    }
    
    
    func testWithDataSet() throws {
       
        let sut = Day01()
        let list = try getInputs()
        XCTAssertEqual(sut.result(list), 651651)
    }
    func testDay01Part02() throws {
        let sut = Day01()
        let list = try getInputs()
        XCTAssertEqual(sut.result3(list), 214486272)
    }
    typealias Inputs = [Int]
    private func getInputs() throws -> Inputs {
        let name = "day01"
        let str = try inputOf(name)
        return str.split(separator: .newLine).compactMap{Int($0)}
    }
}

