import Foundation

let T = Int(readLine()!)!
let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int($0)! }
var F = [Int]()

for i in 0..<N {
    F.append(input[i])
}

if T > F.reduce(0, +) {
    print("Padaeng_i Cry")
} else {
    print("Padaeng_i Happy")
}
