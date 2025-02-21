import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let m = input[0]
let n = input[1]
var graph = [[Int]]()
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

var queue: [(Int, Int)] = []

for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] == 1 {
            queue.append((y, x))
        }
    }
}

var idx = 0

while queue.count > idx {
    let y = queue[idx].0
    let x = queue[idx].1
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        if 0..<m ~= nx && 0..<n ~= ny && graph[ny][nx] == 0 {
            graph[ny][nx] = graph[y][x] + 1
            queue.append((ny, nx))
        }
    }
    idx += 1
}

print(graph.flatMap{ $0 }.contains(0) ? -1 : graph.flatMap{ $0 }.max()! - 1)
