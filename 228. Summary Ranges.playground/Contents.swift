import Foundation

func summaryRanges(_ nums: [Int]) -> [String] {
    var result: [String] = []
    if nums == [] {
        return result
    }
    var start = nums[0]
    for i in 0...nums.count - 1 {
        if i == nums.count - 1 {
            if nums[i] != start {
                result.append("\(start)->\(nums[i])")
            } else {
                result.append("\(start)")
            }
        } else if nums[i] + 1 != nums[i + 1] {
            if nums[i] != start {
                result.append("\(start)->\(nums[i])")
            } else {
                result.append("\(start)")
            }
            start = nums[i+1]
        }
    }
    return result
}

let nums = [0,1,2,4,5,7]
summaryRanges(nums)
