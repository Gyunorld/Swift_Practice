import Foundation

func solution(_ my_string:String) -> Int {
    var sum = 0
    for char in my_string {
        if char.isNumber {
            sum += char.wholeNumberValue ?? 0
        }
    }
    return sum
}

//MARK: - 간결한 버전
//func solution(_ my_string: String) -> Int {
//    return my_string.filter { $0.isNumber }.compactMap { $0.wholeNumberValue }.reduce(0, +)
//}

print(solution("aAb1B2cC34oOp"))
print(solution("1a2b3c4d123"))
