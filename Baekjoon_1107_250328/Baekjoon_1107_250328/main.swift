import Foundation

var channel = Int(String(readLine()!))!
let m = Int(String(readLine()!))!
var broken = [Int]()

if m != 0 {
    broken = readLine()!.split(separator: " ").map { Int(String($0))! }
}

var minCnt = abs(channel - 100)

for i in 0...1000000 {
    let len = check(i)
    if len > 0 {
        let press = abs(channel - i) + len
        minCnt = min(minCnt, press)
    }
}

print(minCnt)

func check(_ i: Int) -> Int {
    var channel = i
    if channel == 0 {
        if broken.contains(0) {
            return 0
        } else {
            return 1
        }
    }
    var len = 0
    while channel > 0 {
        if broken.contains(channel % 10) {
            return 0
        }
        channel = channel / 10
        len += 1
    }
    return len
}
