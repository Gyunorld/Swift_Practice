import Foundation

var star = Array(repeating: [0,0], count: 12)
var connect = [Int: [Int]]()

for i in 1...13 {
    connect[i] = []
}

for j in 0..<12 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0]
    let y = input[1]
    star[j] = [x, y]
    connect[x, default: []].append(y)
    connect[y, default: []].append(x)
}

var line = Array(repeating: 0, count: 12)
for k in 0..<12 {
    line[star[k][0] - 1] += 1
    line[star[k][1] - 1] += 1
}

var list = [Int]()
for m in 0..<12 {
    if line[m] == 3 {
        list.append(m + 1)
    }
}

for s in list {
    if let connectedStar = connect[s] {
        var connectLine = 0
        for star in connectedStar {
            connectLine += line[star - 1]
        }
        if connectLine == 6 {
            print(s)
        }
    }
}
