import Foundation

func romanToInt(_ s: String) -> Int {

    var romanNumber = 0
    var index = 0
    let romanLiteralList: [String: Int] = ["M": 1000, "CM": 900, "D": 500, "CD": 400, "C": 100, "XC": 90, "L": 50, "XL": 40, "X": 10, "IX": 9, "V": 5, "IV": 4, "I": 1]
    while index < s.count {
        if index == s.count - 1 {
            romanNumber += romanLiteralList[String(Array(s)[index])]!
            index += 1
        } else if let i = romanLiteralList[String(Array(s)[index])] {
            if let j = romanLiteralList[String(Array(s)[index]) + String(Array(s)[index + 1])] {
                romanNumber += j
                index += 2
            } else {
                romanNumber += i
                index += 1
            }
        }
    }
    return romanNumber
}

romanToInt("III")
romanToInt("LVIII")
romanToInt("MCMXCIV")
