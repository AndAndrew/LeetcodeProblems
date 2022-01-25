import Foundation

func reverseString(_ s: inout [Character]) {
    var last = s.count - 1
    var first = 0
    
    while first < last {
        (s[first], s[last]) = (s[last], s[first])
        last -= 1
        first += 1
    }
}

var chars: [Character] = ["h","e","l","l","o"]
reverseString(&chars)
