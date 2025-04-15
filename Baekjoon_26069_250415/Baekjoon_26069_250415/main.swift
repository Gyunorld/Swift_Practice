import Foundation

let N = Int(readLine()!)!
var dancer: Set<String> = ["ChongChong"]

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    let a = input[0]
    let b = input[1]
    
    if dancer.contains(a) || dancer.contains(b) {
        dancer.insert(a)
        dancer.insert(b)
    }
}

print(dancer.count)