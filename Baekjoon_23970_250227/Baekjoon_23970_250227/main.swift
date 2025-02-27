import Foundation

let n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map { Int($0)! }
let b = readLine()!.split(separator: " ").map { Int($0)! }

if a == b {
    print(1)
    exit(0)
}

for i in 0..<(n - 1) {
    var swapped = false
    
    for j in 0..<(n - 1 - i) {
        if a[j] > a[j + 1] {
            a.swapAt(j, j + 1)
            swapped = true
            if a == b {
                print(1)
                exit(0)
            }
        }
    }
    
    if !swapped {
        break
    }
}

print(0)


