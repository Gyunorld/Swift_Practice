import Foundation

let n = Int(readLine()!)!

var grapgh = [[Int]](repeating: [], count: n + 1)
var parent = [Int](repeating: -1, count: n + 1)

for _ in 0..<n-1 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = input[0]
    let b = input[1]
    grapgh[a].append(b)
    grapgh[b].append(a)
}

parent[1] = 0

func dfs(node: Int = 1) {
    for nextNode in grapgh[node] {
        if parent[nextNode] == -1 {
            parent[nextNode] = node
            dfs(node: nextNode)
        }
    }
}

dfs()

print(parent[2...].map{ String($0) }.joined(separator: "\n"))
