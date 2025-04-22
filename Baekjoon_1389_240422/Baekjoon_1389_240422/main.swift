//import Foundation
//
//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//let n = input[0]
//let m = input[1]
//var tree: [[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
//
//for _ in 0..<m {
//    let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
//    tree[line[0]][line[1]] = 1
//    tree[line[1]][line[0]] = 1
//}
//
//func bfs(start: Int, cnt: Int) -> Int {
//    var visited: [Bool] = Array(repeating: false, count: n+1)
//    var queue = [(Int, Int)]()
//    var ans = 0
//    
//    visited[start] = true
//    queue.append((start, cnt))
//    
//    while !queue.isEmpty {
//        let now = queue.first!.0
//        let cnt = queue.first!.1
//        queue.removeFirst()
//        
//        for i in 1..<n+1 {
//            if !visited[i] && tree[now][i] == 1 {
//                ans += cnt
//                queue.append((i, cnt+1))
//                visited[i] = true
//            }
//        }
//    }
//    return ans
//}
//
//var ans = 0
//var min = 10000
//
//for i in 1...n {
//    let tmp = bfs(start: i, cnt: 1)
//    if (tmp < min) {
//        min = tmp
//        ans = i
//    }
//}
//
//print(ans)

//플루이드 와샬
import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let INF = 1_000_000_000

var graph = [[Int]](repeating: [Int](repeating: INF, count: n + 1), count: n + 1)

for i in 1...n {
    graph[i][i] = 0
}

for _ in 0..<m {
    let relation = readLine()!.split(separator: " ").map { Int($0)! }
    let a = relation[0], b = relation[1]
    graph[a][b] = 1
    graph[b][a] = 1
}

for k in 1...n {
    for i in 1...n {
        for j in 1...n {
            if graph[i][j] > graph[i][k] + graph[k][j] {
                graph[i][j] = graph[i][k] + graph[k][j]
            }
        }
    }
}

var result = 0
var minTotal = INF

for i in 1...n {
    let total = graph[i][1...n].reduce(0, +)
    if total < minTotal {
        minTotal = total
        result = i
    }
}

print(result)
