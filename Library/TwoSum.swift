//
//  TwoSum.swift
//  AdventOfCode2020
//
//  Created by 游宗諭 on 2020/12/2.
//

import Foundation

public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var cache = [Int: Int]()
    for (i, e) in nums.enumerated() {
        cache[target - e] = i
        if let f = cache[e] {
            return [nums[f], e]
        }
    }
    return []
}
