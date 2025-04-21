import Foundation

let N = Int(readLine()!)!

var map = [[Int]]()
var dp = Array(repeating: Array(repeating: Int64(0), count: N), count: N)

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    map.append(input)
}

dp[0][0] = 1

for i in 0..<N {
    for j in 0..<N {
        if dp[i][j] > 0 && map[i][j] != 0 {
            let dist = map[i][j]
            let down = i + dist
            let right = j + dist
            
            if down < N {
                dp[down][j] += dp[i][j]
            }
            if right < N {
                dp[i][right] += dp[i][j]
            }
        }
    }
}

print(dp[N - 1][N - 1])
