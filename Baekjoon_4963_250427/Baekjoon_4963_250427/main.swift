import Foundation

var map: [[Int]] = []
var checked: [[Bool]] = []
var w = 0
var h = 0
let dx = [0, 0, -1, 1, -1, 1, -1, 1]
let dy = [-1, 1, 0, 0, 1, 1, -1, -1]

func dfs(x: Int, y: Int) {
    checked[x][y] = true
    for i in 0..<8 {
        let nowX = x + dx[i]
        let nowY = y + dy[i]
        
        if nowX >= 0 && nowX < h && nowY >= 0 && nowY < w {
            if map[nowX][nowY] == 1 && !checked[nowX][nowY] {
                dfs(x: nowX, y: nowY)
            }
        }
    }
}

while true {
    let input = readLine()!
    let size = input.split(separator: " ").map { Int($0)! }
    w = size[0]
    h = size[1]
    
    if w == 0 && h == 0 {
        break
    }
    
    map = Array(repeating: Array(repeating: 0, count: w), count: h)
    checked = Array(repeating: Array(repeating: false, count: w), count: h)
    
    for i in 0..<h {
        let row = readLine()!.split(separator: " ").map { Int($0)! }
        for j in 0..<w {
            map[i][j] = row[j]
        }
    }
    
    var cnt = 0
    
    for i in 0..<h {
        for j in 0..<w {
            if map[i][j] == 1 && !checked[i][j] {
                dfs(x: i, y: j)
                cnt += 1
            }
        }
    }
    print(cnt)
}
