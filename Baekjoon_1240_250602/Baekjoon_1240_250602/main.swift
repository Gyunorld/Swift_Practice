import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let N = nm[0]
let M = nm[1]

var graph = [[(Int, Int)]](repeating: [], count: N + 1)

for _ in 0..<(N - 1) {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    let a = edge[0]
    let b = edge[1]
    let d = edge[2]
    graph[a].append((b, d))
    graph[b].append((a, d))
}

func dfs(_ current: Int, _ target: Int, _ sum: Int, _ visited: inout [Bool]) -> Int {
    if current == target {
        return sum
    }
    
    visited[current] = true
    
    for (next, dist) in graph[current] {
        if !visited[next] {
            let result = dfs(next, target, sum + dist, &visited)
            if result != -1 {
                return result
            }
        }
    }
    
    return -1
}

for _ in 0..<M {
    let query = readLine()!.split(separator: " ").map { Int($0)! }
    let a = query[0]
    let b = query[1]
    var visited = [Bool](repeating: false, count: N + 1)
    print(dfs(a, b, 0, &visited))
}
