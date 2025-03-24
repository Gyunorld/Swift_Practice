import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }

var arr = [0] + input
var ans = Array(repeating: 0, count: n + 1)

for i in 1...n {
    var j = 1
    while true {
        if arr[i] == 0 && ans[j] == 0 {
            ans[j] = i
            break
        } else if ans[j] == 0 {
            arr[i] -= 1
        }
        j += 1
    }
}

print(ans[1...].map{String($0)}.joined(separator: " "))
