import Foundation

let N = Int(readLine()!)!
let input = readLine()!.map{ (String($0)) }

var c = 0
var nc = 0

for i in 0..<N {
    if input[i] == "C" {
        c += 1
    } else {
        nc += 1
    }
}

var ans = c / (nc + 1)
if nc > 0 && c % (nc + 1) != 0 {
    ans += 1
}
print(ans)
