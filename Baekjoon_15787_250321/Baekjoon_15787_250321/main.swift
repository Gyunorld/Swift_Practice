import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let N = input[0]
var M = input[1]

var trains = [Int](repeating: 0, count: N)

for _ in 0..<M {
    let commandInput = readLine()!.split(separator: " ").map{ Int($0)! }
    let command = commandInput[0]
    let train = commandInput[1] - 1
    
    if command == 1 {
        let seat = commandInput[2]
        trains[train] |= (1 << (seat - 1))
    } else if command == 2 {
        let seat = commandInput[2]
        trains[train] &= ~(1 << (seat - 1))
    } else if command == 3 {
        trains[train] = (trains[train] << 1) & ((1 << 20) - 1)
    } else if command == 4 {
        trains[train] >>= 1
    }
}

let result = Set(trains)
print(result.count)
