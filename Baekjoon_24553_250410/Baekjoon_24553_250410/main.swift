import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    if n % 10 == 0 {
        print("1")
    } else {
        print("0")
    }
}
