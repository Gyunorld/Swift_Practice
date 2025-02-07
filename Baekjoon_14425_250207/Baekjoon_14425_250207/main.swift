import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
let m = input[1]

var set = Set<String>()
var count = 0

for _ in 0..<n {
    set.insert(readLine()!)
}

for _ in 0..<m {
    if set.contains(readLine()!) {
        count += 1
    }
}

print(count)
