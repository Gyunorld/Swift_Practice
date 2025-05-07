import Foundation

let N = Int(readLine()!)!
var map = [[Int]]()

for _ in 0..<N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    map.append(row)
}

for k in 0..<N {
    for i in 0..<N {
        for j in 0..<N {
            if map[i][k] == 1 && map[k][j] == 1 {
                map[i][j] = 1
            }
        }
    }
}

for i in 0..<N {
    for j in 0..<N {
        print(map[i][j], terminator: " ")
    }
    print()
}
