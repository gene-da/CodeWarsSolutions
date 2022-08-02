// Welcome. In this kata, you are asked to square every digit of a number and concatenate them.
// For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
// Note: The function accepts an integer and returns an integer

import Foundation

func squareDigits(_ num: Int) -> Int {
    // set Int to String to be split in char
    let StrInt: String = String(num)
    // the new String after splitting each number to character and squaring
    var NewStr: String = ""
    // for to loop to index through str number
    for numbers in StrInt.indices {
        // set the indexed string value to char
        let a: Character = StrInt[numbers]
        // creates "a" number char to a whole number and a*a converts into int then string and puts into NewStr
        NewStr.append(String(Int(a.wholeNumberValue! * a.wholeNumberValue!)))
    }
    // final int forces NewStr using NSString and . integervalue
    let FinInt: Int = (NewStr as NSString).integerValue
    return FinInt
}

print(squareDigits(9119))   // 811181
print(squareDigits(0))      // 0
