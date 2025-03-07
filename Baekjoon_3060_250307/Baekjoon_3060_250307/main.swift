import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!
    let food = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var day = 1
    var firstSum = food.prefix(6).reduce(0, +)
    
    while firstSum <= N {
        firstSum *= 4
        day += 1
    }
    print(day)
}
