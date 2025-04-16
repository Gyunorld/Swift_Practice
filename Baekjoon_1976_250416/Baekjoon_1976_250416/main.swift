import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var routes = [[Int]]()
var location = [Int](0...N)

for _ in 0..<N {
    routes.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

func find(_ x: Int) -> Int {
    if location[x] == x {
        return x
    }
    location[x] = find(location[x])
    return location[x]
}

func union(a: Int, b: Int) {
    let a = find(a)
    let b = find(b)
    if a == b {
        return
    }
    if a > b {
        location[a] = b
    } else {
        location[b] = a
    }
}

for y in 0..<N {
    for x in 0..<N {
        if routes[y][x] == 1 {
            union(a: y + 1, b: x + 1)
        }
    }
}

Set(readLine()!.split(separator: " ").map { find(Int($0)!) }).count == 1 ? print("YES") : print("NO")
