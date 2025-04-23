import Foundation

let K = Int(readLine()!)!
let C = Int(readLine()!)!

for _ in 0..<C {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let M = input[0]
    let N = input[1]
    
    let gap = abs(M - N)
    let rest = K - (M > N ? M : N)
    
    if N == M {
        print(1)
    } else if M > N {
        if gap - rest <= 2 {
            print(1)
        } else {
            print(0)
        }
    } else {
        if gap - rest <= 1 {
            print(1)
        } else {
            print(0)
        }
    }
}
