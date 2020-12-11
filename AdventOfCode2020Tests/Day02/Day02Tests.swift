//
// Created by 游宗諭 in 2020/12/11
//
//
// Using Swift 5.0
//
// Running on macOS 10.15


import XCTest
protocol Answer {
    func answer() -> String
}
struct Day02:Answer {
    let list:[String]
    func answer() -> String {
        list.map(Line.init)
            .filter(\.isOK)
            .count.description
    }
    struct Line {
        internal init(line: String) {
            let l = line.split(.space)
            self.range = stoRange(l[0])
            self.char = l[1].first!
            self.input = l[2]
        }
        var isOK: Bool {
            check()
        }
        func check() -> Bool {
            range.contains(
                input.filter{ c in
                    char == c
                }.count
            )
        }
        
        var range: ClosedRange<Int>
        var char: Character
        var input: String
    }
}
class Day02Tests: XCTestCase {
    func test() throws {
        let list =
            [
                "1-3 a: abcde",
                "1-3 b: cdefg",
                "2-9 c: ccccccccc"
            ]
        let sut = Day02(list: list)
        XCTAssertEqual(sut.answer(),"2")
    }
    func testSample() throws {
        let list = try inputOf("day02").lined()
        let sut = Day02(list: list)
        XCTAssertEqual(sut.answer(),"416")
    }
}
