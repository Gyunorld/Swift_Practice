import Foundation

let n = Int(readLine()!)!
var arr = [Int64]()
var map = [Int64 : Int]()
var temp = 0

var i = Int64(1)
while i <= 1_000_000_000_000_000_000 {
    arr.append(i)
    map[i] = temp
    temp += 1
    i *= 2
}

var result = ""

for _ in 0..<n {
    let input = Int64(readLine()!)!
    
    for(j, value) in arr.enumerated() {
        if let y = map[input - value] {
            let x = j
            result += "\(min(x,y)) \(max(x,y))\n"
            break
        }
    }
    
}

print(result)
