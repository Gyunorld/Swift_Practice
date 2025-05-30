import Foundation

let N = Int(readLine()!)!

var dp = Array(repeating: Array(repeating: 0, count: 3), count: N + 1)

dp[1][0] = 1
dp[1][1] = 1
dp[1][2] = 1

for i in 2..<N + 1 {
    dp[i][0] = (dp[i - 1][1] + dp[i - 1][2]) % 9901
    dp[i][1] = (dp[i - 1][0] + dp[i - 1][2]) % 9901
    dp[i][2] = (dp[i - 1][0] + dp[i - 1][1] + dp[i - 1][2]) % 9901
}

let ans = (dp[N][0] + dp[N][1] + dp[N][2]) % 9901

print(ans)
