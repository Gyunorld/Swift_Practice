import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
let m = input[1]

var arr = [Int](repeating: 0, count: 100)
var idx = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let road = input[0]
    let limit = input[1]
    for i in idx..<idx+road {
        arr[i] = limit
    }
    idx += road
}

idx = 0
var maxSpeed = 0

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let dist = input[0]
    let speed = input[1]
    for i in idx..<idx+dist {
        if arr[i] < speed  {
            if arr[i] < speed {
                maxSpeed = max(maxSpeed, speed - arr[i])
            }
        }
    }
    idx += dist
}

print(maxSpeed)
