import Foundation

let pay = readLine()!.split(separator: " ").map{ Int($0)! }

let a = pay[0]
let b = pay[1]
let c = pay[2]

var trucks = [Int](repeating: 0, count: 101)
var sum = 0

for _ in 0..<3 {
    let times = readLine()!.split(separator: " ").map{ Int($0)! }
    (times[0]..<times[1]).forEach { trucks[$0] += 1 }
}

for i in trucks {
    if i == 1 {
        sum += (i * a)
    } else if i == 2 {
        sum += (i * b)
    } else if i == 3 {
        sum += (i * c)
    }
}

print(sum)
