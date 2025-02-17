import Foundation

let n = Int(readLine()!)!
var s = Array(readLine()!)

var seen = [[Character]: Int]()
seen[s] = 0

var cycleLength: Int? = nil

for i in 1...n {
    var newString: [Character] = []

    for j in stride(from: 0, to: s.count, by: 2) {
        newString.append(s[j])
    }

    let start = (s.count % 2 == 0) ? s.count - 1 : s.count - 2
    if start >= 0 {  // 인덱스 초과 방지
        for j in stride(from: start, through: 0, by: -2) {
            newString.append(s[j])
        }
    }

    s = newString

    if let firstIndex = seen[s] {
        cycleLength = i - firstIndex
        break
    }

    seen[s] = i
}


if let cycle = cycleLength {
    let resultIndex = n % cycle
    for (key, value) in seen {
        if value == resultIndex {
            print(String(key))
            break
        }
    }
} else {
    print(String(s))
}
