import Foundation

func solution(_ n: Int, _ edge: [[Int]]) -> Int {
    var graph = [[Int]](repeating: [], count: n)
    var dist = [Int](repeating: 0, count: n)
    var queue = [Int]()
    var maxDist = 0
    var answer = 0
    
    for e in edge {
        let (a, b) = (e[0] - 1, e[1] - 1)
        graph[a].append(b)
        graph[b].append(a)
    }
    
    queue.append(0)
    dist[0] = 1
    
    while !queue.isEmpty {
        let idx = queue.removeFirst()
        for next in graph[idx] {
            if dist[next] == 0 {
                dist[next] = dist[idx] + 1
                maxDist = max(maxDist, dist[next])
                queue.append(next)
            }
        }
    }
    
    answer = dist.filter { $0 == maxDist }.count
    return answer
}

print(solution(6, [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]]))
