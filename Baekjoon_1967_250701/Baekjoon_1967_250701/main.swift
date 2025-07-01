import Foundation

let n = Int(readLine()!)!
var tree = Array(repeating: [(Int, Int)](), count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)
var maxDist = 0
var farthestNode = 0

for _ in 0..<n - 1 {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    let parent = line[0]
    let child = line[1]
    let cost = line[2]
    
    tree[parent].append((child, cost))
    tree[child].append((parent, cost))
}

func dfs(_ node: Int, _ dist: Int) {
    visited[node] = true
    if dist > maxDist {
        maxDist = dist
        farthestNode = node
    }
    
    for (nextNode, cost) in tree[node] {
        if !visited[nextNode] {
            dfs(nextNode, dist + cost)
        }
    }
}

visited = [Bool](repeating: false, count: n + 1)
dfs(1, 0)

visited = [Bool](repeating: false, count: n + 1)
maxDist = 0
dfs(farthestNode, 0)

print(maxDist)
