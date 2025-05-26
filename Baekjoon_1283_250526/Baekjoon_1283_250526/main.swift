import Foundation

var used = Set<Character>()
let n = Int(readLine()!)!

for _ in 0..<n {
    let line = readLine()!
    let words = line.split(separator: " ")
    var isShortcutSet = false
    _ = line

    var idx = 0

    for i in 0..<words.count {
        let word = words[i]
        let firstChar = Character(String(word.first!))
        if !used.contains(Character(firstChar.lowercased())) {
            used.insert(Character(firstChar.lowercased()))

            for j in 0..<i {
                idx += words[j].count + 1
            }

            var chars = Array(line)
            chars.insert("[", at: idx)
            chars.insert("]", at: idx + 2)
            print(String(chars))
            isShortcutSet = true
            break
        }
    }

    if isShortcutSet { continue }

    for (i, char) in line.enumerated() {
        if char != " " && !used.contains(Character(char.lowercased())) {
            used.insert(Character(char.lowercased()))
            var chars = Array(line)
            chars.insert("[", at: i)
            chars.insert("]", at: i + 2)
            print(String(chars))
            isShortcutSet = true
            break
        }
    }

    if !isShortcutSet {
        print(line)
    }
}
