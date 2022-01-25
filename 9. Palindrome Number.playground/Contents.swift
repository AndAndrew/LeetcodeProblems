import Foundation

func isPalindrome(_ x: Int) -> Bool {
            if x < 0 { return false }
            if x < 10 { return true }
            var i = x
            var array: [Int] = []
            while i != 0 {
                array.insert(i % 10, at: 0)
                i /= 10
            }
            for _ in 1...(array.count / 2) {
                if array.last == array.first && array.count != 1 {
                    array.removeLast()
                    array.removeFirst()
                } else if array.count == 1 {
                    return true
                } else { return false }
            }
            return true
}

isPalindrome(1528251)
isPalindrome(-121)

