import Foundation

let n = Int(readLine()!)!
var conference = [[Int]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    conference.append(input)
}

conference.sort {
    if $0[1] == $1[1] {
        return $0[0] < $1[0]
    }
    return $0[1] < $1[1]
}

var cnt = 0
var endTime = 0

for i in conference {
    if i[0] >= endTime {
        endTime = i[1]
        cnt += 1
    }
}

print(cnt)
