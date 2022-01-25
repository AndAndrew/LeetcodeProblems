import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var last: Int?
    var index = 0

    while index < nums.count {
        if nums[index] == last {
            nums.remove(at: index)
        } else {
            last = nums[index]
            index += 1
        }
    }
    nums = Array(Set(nums)).sorted()
    return nums.count
}
func removeDuplicates_2(_ nums: inout [Int]) -> Int {
    nums = Array(Set(nums)).sorted()
    return nums.count
}

var array = [1, 1, 2]
removeDuplicates(&array)
removeDuplicates_2(&array)
