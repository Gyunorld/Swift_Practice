import Foundation

let n = Int(readLine()!)!

let bosoo = (~n & 0xFFFFFFFF) + 1
let xor = (n & 0xFFFFFFFF) ^ bosoo

print(xor.nonzeroBitCount)
