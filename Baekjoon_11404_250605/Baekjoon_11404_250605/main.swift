import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!
let INF = 1_234_567_890

var graph = [[Int]](repeating: [Int](repeating: INF, count: N + 1), count: N + 1)

for i in 1...N {
    graph[i][i] = 0
}

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = input[0]
    let b = input[1]
    let c = input[2]
    graph[a][b] = min(graph[a][b], c)
}

for k in 1...N {
    for a in 1...N {
        for b in 1...N {
            graph[a][b] = min(graph[a][b], graph[a][k] + graph[k][b])
        }
    }
}

for y in 1...N {
    for x in 1...N {
        print(graph[y][x] == INF ? 0 : graph[y][x], terminator: " ")
    }
    print()
}
