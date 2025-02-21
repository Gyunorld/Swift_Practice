import Foundation

let n = Int(readLine()!)!
var pic = [[String]]()

for _ in 0..<n {
    pic.append(readLine()!.map({ String($0) }))
}

var visited = Array(repeating: Array(repeating: 0, count: n), count: n)
var normalQue = [[Int]]()
var daltonismQue = [[Int]]()
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var normal = 0
var daltonism = 0

for i in 0..<n {
    for j in 0..<n {
        if visited[i][j] == 0 {
            normalQue.append([i, j])
            normal += 1
            visited[i][j] = 1
            while !normalQue.isEmpty {
                let now = normalQue.removeFirst()
                for k in 0..<dx.count {
                    let nx = now[0] + dx[k]
                    let ny = now[1] + dy[k]
                    if nx < 0 || nx >= n || ny < 0 || ny >= n {
                        continue
                    }
                    if visited[nx][ny] == 1 {
                        continue
                    }
                    if pic[now[0]][now[1]] == pic[nx][ny] {
                        normalQue.append([nx, ny])
                        visited[nx][ny] = 1
                    }
                }
            }
        }
    }
}

visited = Array(repeating: Array(repeating: 0, count: n), count: n)
for i in 0..<n {
    for j in 0..<n {
        if visited[i][j] == 0 {
            daltonismQue.append([i, j])
            visited[i][j] = 1
            daltonism += 1
            while !daltonismQue.isEmpty {
                let now = daltonismQue.removeFirst()
                for k in 0..<dx.count {
                    let nx = now[0] + dx[k]
                    let ny = now[1] + dy[k]
                    if nx < 0 || nx >= n || ny < 0 || ny >= n {
                        continue
                    }
                    if visited[nx][ny] == 1 {
                        continue
                    }
                    if pic[now[0]][now[1]] == "R" || pic[now[0]][now[1]] == "G" {
                        if pic[nx][ny] == "B" {
                            continue
                        }
                    } else {
                        if pic[nx][ny] != "B" {
                            continue
                        }
                    }
                    daltonismQue.append( [nx, ny] )
                    visited[nx][ny] = 1
                }
            }
        }
    }
}

print("\(normal) \(daltonism)")
