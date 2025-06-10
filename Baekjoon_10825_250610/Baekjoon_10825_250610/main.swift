import Foundation

let N = Int(readLine()!)!
var score : [(String, Int, Int, Int)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    let name = input[0]
    let kor = Int(input[1])!
    let eng = Int(input[2])!
    let math = Int(input[3])!
    score.append((name, kor, eng, math))
}

let sortedScore = score.sorted {
    if $0.1 != $1.1 {
        return $0.1 > $1.1
    } else if $0.2 != $1.2 {
        return $0.2 < $1.2
    } else if $0.3 != $1.3 {
        return $0.3 > $1.3
    } else {
        return $0.0 < $1.0
    }
}

for i in sortedScore {
    print(i.0)
}
