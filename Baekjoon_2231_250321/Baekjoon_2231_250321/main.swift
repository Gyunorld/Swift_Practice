import Foundation

let N = Int(readLine()!)!
var result = 0

for i in 0...N {
    var num = i
    var sum = 0
    while num != 0 {
        sum += num % 10
        num /= 10
    }
    if i + sum == N {
        result = i
        break
    }
}

print(result)
