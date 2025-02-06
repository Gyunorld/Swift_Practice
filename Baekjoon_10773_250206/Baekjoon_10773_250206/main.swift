import Foundation

let k = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<k {
    let num = Int(readLine()!)!
    
    if stack.isEmpty || num != 0 {
        stack.append(num)
    }else if num == 0 {
        stack.removeLast()
    }
}

let sum = stack.reduce(0, +)

print(sum)
