import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let A = input[0]
let B = input[1]
let C = input[2] % 2

let ans = (C == 1) ? (A ^ B) : A

print(ans)
