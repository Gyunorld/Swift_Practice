import Foundation

let n = Int(readLine()!)!
var ans = [Int]()

for i in 0..<n {
    if i == n-1 && n % 2 == 1 {
        ans.append(3)
    } else {
        ans.append((i % 2) + 1)
    }
}

print(ans.map{ String($0) }.joined(separator: " "))
