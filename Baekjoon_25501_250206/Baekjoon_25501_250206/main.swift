import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    
    let s = readLine()!.map { $0 }
    var l = 0, r = s.count - 1
    var count = 1
    var isPallindrom = true
    
    while l < r {
        if s[l] != s[r] {
            isPallindrom = false
            break
        }
        l += 1
        r -= 1
        count += 1
    }
    
    print(isPallindrom ? 1 : 0, count)
}
