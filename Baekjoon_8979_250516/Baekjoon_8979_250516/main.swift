import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let k = input[1]

var medal = [[Int]]()
for _ in 0..<n {
    let medalInput = readLine()!.split(separator: " ").map{ Int($0)! }
    medal.append(medalInput)
}

medal.sort {
    $0[1] == $1[1] ? $0[2] == $1[2] ? $0[3] > $1[3] : $0[2] > $1[2] : $0[1] > $1[1]
}

for i in 0..<n {
    if medal[i][0] == k {
        var idx = i
        while true {
            guard idx > 0 else {
                print(1)
                break
            }
            if medal[idx-1][1...] == medal[idx][1...] {
                idx -= 1
            } else {
                print(idx + 1)
                break
            }
        }
        break
    }
}
