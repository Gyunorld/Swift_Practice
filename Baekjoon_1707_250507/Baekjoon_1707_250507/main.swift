import Foundation

let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    let nodes = input[0]
    let edges = input[1]
    
    var graph = Array(repeating: [Int](), count: nodes+1)
    
    for _ in 0..<edges {
        let edge = readLine()!.split(separator: " ").map { Int($0)! }
        let start = edge[0]
        let end = edge[1]
        
        graph[start].append(end)
        graph[end].append(start)
    }
    
    print(solve(graph: graph))
}

func solve(graph: [[Int]]) -> String {
    var colors = Array(repeating: 0, count: graph.count)
    var visited = Array(repeating: false, count: graph.count)
    
    for start in 1..<graph.count {
        if visited[start] { continue }
        
        var queue = [start]
        colors[start] = 1
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            visited[node] = true
            
            for neighbor in graph[node] {
                if colors[neighbor] == colors[node] {
                    return "NO"
                }
                if colors[neighbor] != 0 { continue }
                
                colors[neighbor] = (colors[node] == 1 ? 2 : 1)
                queue.append(neighbor)
            }
        }
    }
    return "YES"
}
