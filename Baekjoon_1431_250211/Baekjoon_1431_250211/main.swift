import Foundation

let n = Int(readLine()!)!

var answer = [String]()

for _ in 0..<n {
    answer.append(readLine()!)
}

answer.sort {
    if $0.count == $1.count {
        if sum($0) == sum($1) {
            return $0 < $1
        } else {
            return sum($0) < sum($1)
        }
    } else {
        return $0.count < $1.count
    }
}

func sum(_ s: String) -> Int {
    let str = Array(s).map{ String($0) }
    var sum = 0
    for char in str {
        if Int(char) != nil {
            sum += Int(char)!
        }
    }
    return sum
}

answer.forEach { print($0) }
