//
//  ThreeSum.swift
//  AdventOfCode2020
//
//  Created by 游宗諭 on 2020/12/2.
//

import Foundation
public func threeSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    let nums = nums.sorted()
    var res = [[Int]]()
    for (i, e) in nums.enumerated() {
        let before = nums[..<i]
        let after = nums[(i + 1)...]
        let localNums = [before, after].flatMap { $0 }
        var two = twoSum(localNums, target - e)
        if two.isEmpty { continue }
        two.append(e)
        res.append(two.sorted())
    }
    return res.reduce([]) {
        $0.contains($1) ? $0 : $0 + [$1]
    }
}
