import Foundation

let N = Int(readLine()!)!
let tower = readLine()!.split(separator: " ").map{ Int($0)! }
var stack = [Int]()
var ans = [Int]()

for i in 0..<N {
    while !stack.isEmpty && tower[stack.last!] < tower[i] {
            stack.removeLast()
        }

        if stack.isEmpty {
            ans.append(0)
        } else {
            ans.append(stack.last! + 1)
        }

        stack.append(i)
}

print(ans.map { String($0) }.joined(separator: " "))
