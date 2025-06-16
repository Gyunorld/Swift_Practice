import Foundation

let N = Int(readLine()!)!
var dp = [Int](repeating: 0, count: N + 1)
var result = ""

if N >= 2 {
    for i in 2...N {
        dp[i] = dp[i - 1] + 1
        
        if i % 2 == 0 {
            dp[i] = min(dp[i], dp[i / 2] + 1)
        }
        if i % 3 == 0 {
            dp[i] = min(dp[i], dp[i / 3] + 1)
        }
    }
}

result += "\(dp[N])\n"

var ans = N
while ans > 0 {
    result += "\(ans) "
    
    if ans == 1 {
        break
    }
    
    if ans % 3 == 0 && dp[ans] == dp[ans / 3] + 1 {
        ans /= 3
    } else if ans % 2 == 0 && dp[ans] == dp[ans / 2] + 1 {
        ans /= 2
    } else {
        ans -= 1
    }
}

print(result.trimmingCharacters(in: .whitespaces))
