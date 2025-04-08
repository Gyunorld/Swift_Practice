import Foundation

let n = Int(readLine()!)!
var stack = [Int]()

for _ in 1...n {
    let input = readLine()!.split(separator: " ")
    let command = input[0]
    
    if command == "push" {
        stack.append(Int(input[1])!)
    } else if command == "pop" {
        print(stack.isEmpty ? -1 : stack.last! )
        if !stack.isEmpty  {
            stack.removeLast()
        }
    } else if command == "size" {
        print(stack.count)
    } else if command == "empty" {
        print(stack.isEmpty ? 1 : 0)
    } else if command == "top" {
        print(stack.isEmpty ? -1 : stack.last!)
    }
}
