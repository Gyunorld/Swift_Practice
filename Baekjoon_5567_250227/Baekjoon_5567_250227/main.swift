import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!


var friends = [[Int]](repeating: [], count: n)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
    let a = input[0]
    let b = input[1]
    friends[a].append(b)
    friends[b].append(a)
}

var visited = [Bool](repeating: false, count: n)
visited[0] = true

var queue = [0]
var invite = 0
var depth = 0

while !queue.isEmpty && depth < 2 {
    let size = queue.count
    
    for _ in 0..<size {
        let x = queue.removeFirst()
        
        for nowx in friends[x] {
            if visited[nowx] { continue }
            visited[nowx] = true
            invite += 1
            queue.append(nowx)
        }
    }
    depth += 1
}

print(invite)

