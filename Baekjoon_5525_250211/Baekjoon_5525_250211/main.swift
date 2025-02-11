import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
let s = readLine()!.map{ $0 }

var cnt = 0
var idx = 0
var ans = 0

while idx < m - 2 {
    if String(s[idx...idx+2]) == "IOI" {
        cnt += 1
        idx += 2
        if cnt == n {
            cnt -= 1
            ans += 1
        }
    } else {
        idx += 1
        cnt = 0
    }
}

print(ans)

//MARK: - 50점짜리 코드
//let n = Int(readLine()!)!
//let m = Int(readLine()!)!
//let s = readLine()!
//
//var ans = 0
//var cnt = 0
//var idx = 0
//
//while idx < m - 1 {
//    if s[s.index(s.startIndex, offsetBy: idx)] == "I" {
//        cnt = 0
//        while idx + 1 < m && s[s.index(s.startIndex, offsetBy: idx + 1)] == "O"
//                && idx + 2 < m && s[s.index(s.startIndex, offsetBy: idx + 2)] == "I" {
//            cnt += 1
//            if cnt >= n {
//                ans += 1
//            }
//            idx += 2
//        }
//    }
//    idx += 1
//}
//
//print(ans)
