import Foundation

func solution(_ n:Int, _ results:[[Int]]) -> Int {
    var info = Array(repeating: [Int](), count: n + 1)
    var winAndLose = [(Int, Int)](repeating: (0,0), count: n + 1)
    
    for i in 0..<results.count {
        let win = results[i][0]
        let lose = results[i][1]
        info[lose].append(win)
    }
    
    func dfs(start: Int) {
        var queue = [start]
        var visited = [Bool](repeating: false, count: n + 1)
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            visited[node] = true
            
            for next in info[node] {
                if !visited[next] {
                    visited[next] = true
                    queue.append(next)
                    winAndLose[start].0 += 1
                    winAndLose[next].1 += 1
                }
            }
        }
    }
    
    for i in 1..<info.count {
        dfs(start: i)
    }
    
    return winAndLose.filter{ $0.0 + $0.1 == n - 1 }.count
}


print(solution(5, [[4, 3], [4, 2], [3, 2], [1, 2], [2, 5]]))
