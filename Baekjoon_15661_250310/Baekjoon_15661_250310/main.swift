import Foundation

var N = Int(readLine()!)!
var result = Int.max
var chemical = [[Int]]()
var visited = [Bool](repeating: false, count: N)

for _ in 0..<N {
    chemical.append(readLine()!.split(separator: " ").map{Int($0)!})
}

func diff() -> Int {
    var starting = 0
    var link = 0
    
    for i in 0..<N {
        for j in (i + 1)..<N {
            if visited[i] && visited[j] {
                starting += chemical[i][j] + chemical[j][i]
            } else if !visited[i] && !visited[j] {
                link += chemical[i][j] + chemical[j][i]
            }
        }
    }
    return abs(starting - link)
}

func solve(idx: Int, count: Int) {
    if count >= 1 && count < N {
        let gap = diff()
        result = min(result, gap)
        if result == 0 {
            return
        }
    }

    if idx == N {
        return
    }

    visited[idx] = true
    solve(idx: idx + 1, count: count + 1)
    visited[idx] = false
    solve(idx: idx + 1, count: count)
}

solve(idx: 0, count: 0)

print(result)
