import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)

var time = 0
var ans = 0

for i in input {
    time += i
    ans += time
}

print(ans)
