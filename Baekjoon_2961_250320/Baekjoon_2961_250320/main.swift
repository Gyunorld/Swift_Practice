import Foundation

let n = Int(readLine()!)!
var flavors = [[Int]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map({Int(String($0))!})
    flavors.append(input)
}

var minDif = Int.max

for i in 1..<(1 << n) {
    var sour = 1
    var bitter = 0
    for j in 0..<n {
        if (i & (1 << j)) != 0 {
            sour *= flavors[j][0]
            bitter += flavors[j][1]
        }
    }
    minDif = min(minDif, abs(sour - bitter))
}

print(minDif)
