import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
let m = input[1]

var maxSum = 0

let cards = readLine()!.split(separator: " ").map{ Int($0)! }

for i in 0..<n-2  {
    for j in i+1..<n-1 {
        for k in j+1..<n {
            let sum = cards[i] + cards[j] + cards[k]
            if sum <= m {
                maxSum = max(maxSum, sum)
            }
        }
    }
}

print(maxSum)
