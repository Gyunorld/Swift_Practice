import Foundation

let s = Array(readLine()!)
let t = Array(readLine()!)

var dp = Array(repeating: Array(repeating: 0, count: t.count + 1), count: s.count + 1)
var ans = 0

for i in 1...s.count {
    for j in 1...t.count {
        if s[i - 1] == t[j - 1] {
            dp[i][j] = dp[i - 1][j - 1] + 1
            ans = max(ans, dp[i][j])
        }
    }
}

print(ans)
