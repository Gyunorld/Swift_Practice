import Foundation

let N = Int(readLine()!)!

var nameSet = Set<String>()
var ans = 0

for _ in 0..<N {
    let input = readLine()!
    if input == "ENTER" {
        nameSet.removeAll()
    } else {
        if !nameSet.contains(input) {
            nameSet.insert(input)
            ans += 1
        }
    }
}

print(ans)
