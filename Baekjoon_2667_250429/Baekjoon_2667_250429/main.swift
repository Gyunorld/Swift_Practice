import Foundation

let n = Int(readLine()!)!
var map = [[Int]]()
var visited = [[Bool]]()

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]
var cnt = 0

for _ in 1...n {
    map.append(readLine()!.map{Int(String($0))!})
    visited.append(Array(repeating: false, count: n))
}

func dfs(x: Int, y: Int) {
    cnt += 1
    visited[x][y] = true
    for i in 0...3 {
        let nowX = x + dx[i]
        let nowY = y + dy[i]
        if nowX >= 0 && nowX < n && nowY >= 0 && nowY < n {
            if map[nowX][nowY] == 1 && !visited[nowX][nowY] {
                dfs(x: nowX, y: nowY)
            }
        }
    }
}

var ans = [Int]()
for i in 0..<n {
    for j in 0..<n {
        if map[i][j] == 1 && !visited[i][j] {
            cnt = 0
            dfs(x: i, y: j)
            ans.append(cnt)
        }
    }
}

print(ans.count)
ans.sort()
print(ans.map{String($0)}.joined(separator: "\n"))
