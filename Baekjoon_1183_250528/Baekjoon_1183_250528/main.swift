import Foundation

let N = Int(readLine()!)!
var input = [Int]()

for _ in 0..<N {
    let times = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = times[0]
    let b = times[1]
    input.append(a - b)
}

input.sort()

if N % 2 == 1 {
    print(1)
} else {
    let ans = abs(input[N/2] - input[N/2 - 1]) + 1
    print(ans)
}
