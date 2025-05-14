import Foundation

let N = Int(readLine()!)!
var ans = 0
var stack = [[Int]]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    if input[0] == 1 {
        let first = input[1]
        let second = input[2]
        stack.append([first,second])
    }
    
    if !stack.isEmpty {
        var task = stack.removeLast()
        task[1] -= 1
        if task[1] == 0 {
            ans += task[0]
        } else {
            stack.append(task)
        }
    }
}

print(ans)
