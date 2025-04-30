import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 1001, count: 1001)

dp[1] = 0

for i in 1...N {
    for j in stride(from: 1, through: input[i - 1], by: 1) {
        if i + j <= N {
            dp[i + j] = min(dp[i + j], dp[i] + 1)
        }
    }
}
if dp[N] == 1001 {
    print(-1)
}else {
    print(dp[N])
}
