import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
let target = input[1]

var members = [Int]()

for _ in 0..<n {
    members.append(Int(readLine()!)!)
}

var visited = Array(repeating: false, count: n)
var current = 0
var step = 0

while !visited[current] {
    if current == target {
        print(step)
        exit(0)
    }
    visited[current] = true
    current = members[current]
    step += 1
}
print(-1)
