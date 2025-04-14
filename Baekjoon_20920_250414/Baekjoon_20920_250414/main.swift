import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let N = firstLine[0]
let M = firstLine[1]

var words: [String: Int] = [:]

for _ in 0..<N {
    let word = readLine()!
    if word.count >= M {
        words[word, default: 0] += 1
    }
}

let sortedWords = words.sorted {
    if $0.value != $1.value {
        return $0.value > $1.value
    }
    if $0.key.count != $1.key.count {
        return $0.key.count > $1.key.count
    }
    return $0.key < $1.key
}

for (word, _) in sortedWords {
    print(word)
}

