import Foundation

var s = Array(readLine()!)
var t = Array(readLine()!)

while t.count > s.count {
    if t.last == "A" {
        t.removeLast()
    } else if t.last == "B" {
        t.removeLast()
        t.reverse()
    }
}

print(t == s ? 1 : 0)
