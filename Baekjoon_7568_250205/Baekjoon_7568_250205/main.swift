import Foundation

let n = Int(readLine()!)!
var size = [[Int]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    size.append(input)
}

for i in 0..<n {
    var rank = 1
    for j in 0..<n {
        if size[i][0] < size[j][0] && size[i][1] < size[j][1] {
            rank += 1
        }
    }
    print(rank, terminator: " ")
}
