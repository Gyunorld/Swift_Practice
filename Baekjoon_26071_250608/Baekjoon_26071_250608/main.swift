import Foundation

let N = Int(readLine()!)!

var map = [[String]]()

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

for _ in 0..<N {
    let input = readLine()!.map{ String($0) }
    map.append(input)
}

