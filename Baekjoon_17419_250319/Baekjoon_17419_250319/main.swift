import Foundation

let N = Int(readLine()!)!
let K = readLine()!.map{ String($0) }

var answer = 0

for i in 0..<K.count {
    if K[i] == "1" {
        answer += 1
    }
}

print(answer)
