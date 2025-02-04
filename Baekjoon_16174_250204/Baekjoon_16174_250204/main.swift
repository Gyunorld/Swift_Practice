import Foundation

let size = Int(readLine()!)!
var map = [[Int]]()

for _ in 0..<size {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    map.append(row)
}

for i in stride(from: size - 1, through: 0, by: -1) {
    for j in stride(from: size - 1, through: 0, by: -1) {
        if map[i][j] == -1 {
            for k in stride(from: j - 1, through: 0, by: -1) {
                if map[i][k] == (j - k) {
                    map[i][k] = -1
                }
            }
            for k in stride(from: i - 1, through: 0, by: -1) {
                if map[k][j] == (i - k) {
                    map[k][j] = -1
                }
            }
        }
    }
}

print(map[0][0] == -1 ? "HaruHaru" : "Hing")

