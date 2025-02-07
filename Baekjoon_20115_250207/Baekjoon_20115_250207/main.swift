import Foundation

let n = Int(readLine()!)!
let energyDrink = Array(readLine()!.split(separator: " ").map{ Double($0)! })
var sum = 0.0

let max = energyDrink.sorted(by: >)[0]

for drink in energyDrink.sorted(by: >)[1...] {
    sum += drink / 2
}

print(sum + max)
