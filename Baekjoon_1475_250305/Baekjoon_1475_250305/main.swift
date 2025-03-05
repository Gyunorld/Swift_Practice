import Foundation

let n = readLine()!.map { Int(String($0))! }
var cnt = Array(repeating: 0, count: 10)

for i in n {
    if i == 6 || i == 9 {
        if cnt[6] < cnt[9] {
            cnt[6] += 1
        } else {
            cnt[9] += 1
        }
    } else {
        cnt[i] += 1
    }
}

print(cnt.max()!)
