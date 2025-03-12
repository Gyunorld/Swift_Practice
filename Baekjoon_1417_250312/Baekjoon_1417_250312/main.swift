import Foundation

let N = Int(readLine()!)!
let dasomVote = Int(readLine()!)!

var dasom = dasomVote
var candiate = [Int]()

for _ in 0..<N-1 {
    let vote = Int(readLine()!)!
    candiate.append(vote)
}

var cnt = 0

while let maxIdx = candiate.indices.max(by: { candiate[$0] < candiate[$1] }), candiate[maxIdx] >= dasom {
    dasom += 1
    candiate[maxIdx] -= 1
    cnt += 1
}

print(cnt)
