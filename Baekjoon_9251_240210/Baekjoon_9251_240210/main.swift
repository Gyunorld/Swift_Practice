import Foundation

let a = readLine()!.map{String($0)}
let b = readLine()!.map{String($0)}

var dp = Array(repeating: Array(repeating: 0, count: b.count + 1), count: a.count + 1)

for i in 1..<a.count + 1 {
    for j in 1..<b.count + 1 {
        if a[i - 1] == b[j - 1] {
            dp[i][j] = dp[i - 1][j - 1] + 1
        } else {
            dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
        }
    }
}

print(dp[a.count][b.count])
