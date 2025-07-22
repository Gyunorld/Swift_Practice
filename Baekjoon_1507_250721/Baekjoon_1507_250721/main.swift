import Foundation

let n = Int(readLine()!)!
var map = Array(repeating: Array(repeating: 0, count: n), count: n)
var temp = Array(repeating: Array(repeating: 0, count: n), count: n)
var ans = 0

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<n {
        map[i][j] = input[j]
        temp[i][j] = input[j]
    }
}

for i in 0..<n {
    for j in 0..<n {
        for k in 0..<n {
            if i == j || i == k || j == k {
                continue
            }

            if map[i][j] > map[i][k] + map[k][j] {
                print(-1)
                exit(0)
            }

            if map[i][j] == map[i][k] + map[k][j] {
                temp[i][j] = -1
            }
        }
    }
}


for i in 0..<n {
    for j in (i+1)..<n {
        if temp[i][j] == 0 || temp[i][j] == -1 {
            continue
        }
        ans += temp[i][j]
    }
}

print(ans)
