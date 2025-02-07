import Foundation

let input = readLine()!.split(separator: " ")

let a = input[0]
let b = input[1]

let min = Int(a.replacingOccurrences(of: "6", with: "5"))! + Int(b.replacingOccurrences(of: "6", with: "5"))!
let max = Int(a.replacingOccurrences(of: "5", with: "6"))! + Int(b.replacingOccurrences(of: "5", with: "6"))!

print(min, max)
