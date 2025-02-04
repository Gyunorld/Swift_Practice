import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    if let n = Int(readLine()!) {
        let a = n / 5
        let b = n % 5
        print(String(repeating: "++++ ", count: a), terminator: "")
        print(String(repeating: "|", count: b))
    }
}
