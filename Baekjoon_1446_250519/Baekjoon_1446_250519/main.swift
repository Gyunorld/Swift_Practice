import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let D = input[1]

var shortcuts = [Int: [[Int]]]()

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    let start = line[0]
    let end = line[1]
    let dist = line[2]

    if end > D {
        continue
    }

    shortcuts[start, default: []].append([end, dist])
}

var dp = Array(repeating: Int.max, count: D + 1)
dp[0] = 0

for i in 0..<D {
    dp[i + 1] = min(dp[i + 1], dp[i] + 1)

    if let paths = shortcuts[i] {
        for path in paths {
            let end = path[0]
            let dist = path[1]
            dp[end] = min(dp[end], dp[i] + dist)
        }
    }
}

print(dp[D])
