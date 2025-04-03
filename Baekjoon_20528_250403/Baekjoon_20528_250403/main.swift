import Foundation

let n = Int(readLine()!)!
let word = readLine()!.split(separator: " ").map{ String($0) }

for i in 0..<n {
    if word[0].first != word[i].first {
        print("0")
        exit(0)
    }
}

print("1")
