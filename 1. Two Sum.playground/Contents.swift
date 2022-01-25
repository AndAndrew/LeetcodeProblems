import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    var dictionary: [Int: Int] = [:]
    var resultArray: [Int] = []

    for (i, j) in nums.enumerated() {
        if let index = dictionary[target - j] {
            resultArray.append(index)
            resultArray.append(i)
            return resultArray
        }
        dictionary[j] = i
    }
    return resultArray
}
twoSum([2, 7, 11, 15], 9)
twoSum([3, 3], 6)
