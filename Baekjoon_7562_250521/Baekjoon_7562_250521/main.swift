import Foundation

let t = Int(readLine()!)!
let dy = [2, 2, 1, 1, -1, -1, -2, -2]
let dx = [-1, 1, -2, 2, -2, 2, -1 ,1]
var result = [Int]()

for _ in 0..<t {
    let l = Int(readLine()!)!
    let start = readLine()!.split(separator: " ").map{Int($0)!}
    let destination = readLine()!.split(separator: " ").map{Int($0)!}
    
    if (start[0],start[1]) == (destination[0],destination[1]) {
        result.append(0)
    } else {
        let dest_check = (destination[0], destination[1])
        var queue = [(start[0],start[1])]
        var board = Array(repeating: Array(repeating: 0, count: l), count: l)
        var arrived = 0
        var idx = 0
        
        while !queue.isEmpty {
            let (x, y) = queue[idx]
            idx += 1
            
            for i in 0..<8 {
                let dx = x + dx[i]
                let dy = y + dy[i]
                
                if dx < 0 || dy < 0 || dx >= l || dy >= l || board[dx][dy] != 0 { continue }
                
                board[dx][dy] = board[x][y] + 1
                
                if dest_check == (dx, dy) {
                    arrived = board[dx][dy]
                    break
                }
                
                queue.append((dx,dy))
            }
            if arrived != 0 {
                result.append(arrived)
                break
            }
        }
    }
}

print(result.map{String($0)}.joined(separator: "\n"))
