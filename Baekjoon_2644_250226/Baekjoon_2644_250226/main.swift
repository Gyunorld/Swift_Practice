import Foundation

let n = Int(readLine()!)!

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let start = input[0]
let end = input[1]

let m = Int(readLine()!)!

var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)

for _ in 0..<m {
    let relation = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = relation[0]
    let b = relation[1]
    
    graph[a].append(b)
    graph[b].append(a)
}

var visited = [Bool](repeating: false, count: n + 1)
var answer = -1

func dfs(node: Int, depth: Int) {
    visited[node] = true
    
    if node == end {
        answer = depth
        return
    }
    
    for next in graph[node] {
        if !visited[next] {
            visited[next] = true
            dfs(node: next, depth: depth + 1)
        }
    }
}

dfs(node: start, depth: 0)
print(answer)
