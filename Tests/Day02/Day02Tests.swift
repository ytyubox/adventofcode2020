//
// Created by 游宗諭 in 2020/12/11
//
//
// Using Swift 5.0
//
// Running on macOS 10.15

import XCTest
typealias List = [String]
protocol Answer {
    func answer() -> String
    func answer2() -> String
}

struct Day02: Answer {
    let list: [String]
    func answer() -> String {
        list.map(Line.init)
            .filter(\.isOK)
            .count.description
    }

    func answer2() -> String {
        list.map(Line.init)
            .filter(\.check2)
            .count.description
    }

    struct Line {
        internal init(line: String) {
            let l = line.split(.space)
            range = stoRange(l[0])
            char = l[1].first!
            input = l[2].characters
        }

        var isOK: Bool {
            check()
        }

        func check() -> Bool {
            range.contains(
                input.filter { c in
                    char == c
                }.count
            )
        }

        var check2: Bool {
            (input[range.lowerBound - 1] == char &&
                input[range.upperBound - 1] != char) ||
                (
                    input[range.lowerBound - 1] != char &&
                        input[range.upperBound - 1] == char
                )
        }

        var range: ClosedRange<Int>
        var char: Character
        var input: [Character]
    }
}

class Day02Tests: XCTestCase {
    func test() throws {
        let list =
            [
                "1-3 a: abcde",
                "1-3 b: cdefg",
                "2-9 c: ccccccccc",
            ]
        let sut = Day02(list: list)
        XCTAssertEqual(sut.answer(), "2")
    }

    func testSample() throws {
        let list = try inputOf("day02").lined()
        let sut = Day02(list: list)
        XCTAssertEqual(sut.answer(), "416")
    }

    func testpart2() throws {
        let list = [
            "1-3 a: abcde",
            "1-3 b: cdefg",
            "2-9 c: ccccccccc",
        ]
        let sut = Day02(list: list)
        XCTAssertEqual(sut.answer2(), "1")
    }

    func testSample2() throws {
        let list = try inputOf("day02").lined()
        let sut = Day02(list: list)
        XCTAssertEqual(sut.answer2(), "688")
    }
}
