import Foundation

func intToRoman(_ num: Int) -> String {
    var integerValue = num
    var romanNumberString = ""
    let romanLiteralList: [(Int, String)] = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"), (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
    
    for i in romanLiteralList {
        while (integerValue >= i.0) {
            integerValue -= i.0
            romanNumberString += i.1
        }
    }
    return romanNumberString
}

intToRoman(1994)
