import Foundation

let count = Int(readLine()!)!
var words = [String]()

for _ in 0..<count {
    words.append(readLine()!)
}

words = Array(Set(words))
words.sort { $0.count == $1.count ? $0 < $1 : $0.count < $1.count }

words.forEach{ print($0) }
