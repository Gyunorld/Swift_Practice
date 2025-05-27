import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
let M = input[1]
var map = [[Int]]()

for _ in 0..<N {
    let line = readLine()!.map { Int(String($0))! }
    map.append(line)
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, -1, 1]

func solution() -> Int {
    var queue = [(x: Int, y: Int, broken: Int)]()
    var visited = Array(repeating: Array(repeating: Array(repeating: 0, count: 2), count: M), count: N)
    
    queue.append((0, 0, 0))
    visited[0][0][0] = 1
    var cnt = 0
    
    while cnt < queue.count {
        let next = queue[cnt]
        cnt += 1
        
        let nx = next.x
        let ny = next.y
        let broken = next.broken
        
        if nx == N - 1 && ny == M - 1 {
            return visited[nx][ny][broken]
        }
        
        for i in 0..<4 {
            let ax = nx + dx[i]
            let ay = ny + dy[i]
            
            if ax < 0 || ay < 0 || ax >= N || ay >= M {
                continue
            }
            
            if map[ax][ay] == 0 && visited[ax][ay][broken] == 0 {
                visited[ax][ay][broken] = visited[nx][ny][broken] + 1
                queue.append((ax, ay, broken))
            }
            
            if map[ax][ay] == 1 && broken == 0 && visited[ax][ay][1] == 0 {
                visited[ax][ay][1] = visited[nx][ny][broken] + 1
                queue.append((ax, ay, 1))
            }
        }
    }
    return -1
}

print(solution())
