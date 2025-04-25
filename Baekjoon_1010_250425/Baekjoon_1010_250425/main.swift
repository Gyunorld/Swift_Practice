import Foundation

let T = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 31), count: 31)

for i in 1..<30 {
    for j in 0...i {
        if j == 0 || i == j {
            dp[i][j] = 1
            continue
        }
        dp[i][j] = dp[i - 1][j - 1] + dp[i - 1][j]
    }
}

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    print(dp[input[1]][input[0]])
}
