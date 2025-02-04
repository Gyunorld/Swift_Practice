import Foundation

let N = Int(readLine()!)!
var result = ""

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    let S = input[0]
    let T = input[1]
    
    if let index = S.firstIndex(where: { $0 == "x" || $0 == "X"})?.utf16Offset(in: S) {
        let target = T[T.index(T.startIndex, offsetBy: index)]
        result.append(target.isLowercase ? target.uppercased() : String(target))
    }
}

print(result)
