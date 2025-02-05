import Foundation

let n = readLine()!.split(separator: " ").map { Int(String($0))! }
var start = 0
var end = n[1] - 1

let j = Int(readLine()!)!
var apple = [Int]()

for _ in 0..<j {
    let location = Int(readLine()!)! - 1
    apple.append(location)
}

var dist = 0
for a in apple {
    if start <= a && a <= end {
        continue
    } else if a < start {
        while start != a {
            start -= 1
            end -= 1
            dist += 1
        }
    } else if end < a {
        while end != a {
            start += 1
            end += 1
            dist += 1
        }
    }
}

print(dist)
