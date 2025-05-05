import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
var a = input[0]
var b = input[1]
var ans = 1

while b != a {
    if b < a {
        ans = -1
        break
    }
    if b % 2 == 0 {
        b /= 2
    } else if b % 10 == 1 {
        b /= 10
    } else {
        ans = -1
        break
    }
    ans += 1
}

print(ans)
