import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)

for _ in 0..<m {
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input2[0]
    let b = input2[1]
    
    graph[a].append(b)
    graph[b].append(a)
}

var visited = [Bool](repeating: false, count: n + 1)

func dfs(node: Int) {
    visited[node] = true
    
    for next in graph[node] {
        if !visited[next] {
            visited[next] = true
            dfs(node: next)
        }
    }
}

var answer = 0

for i in 1...n {
    if !visited[i] {
        dfs(node: i)
        answer += 1
    }
}

print(answer)
