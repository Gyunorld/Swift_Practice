import Foundation

var str = readLine()!
var zeroCount = str.split(separator: "0").count
var oneCount = str.split(separator: "1").count

print(min(zeroCount, oneCount))

//MARK: - 자바를 변환

//func checked(_ str: String) {
//    var zeroCount = 0
//    var oneCount = 0
//
//    let chars = Array(str) // 문자열을 배열로 변환
//
//    if chars[0] == "0" {
//        zeroCount += 1
//    } else {
//        oneCount += 1
//    }
//
//    for i in 1..<chars.count {
//        if chars[i - 1] != chars[i] {
//            if chars[i] == "0" {
//                zeroCount += 1
//            } else {
//                oneCount += 1
//            }
//        }
//    }
//
//    print(min(zeroCount, oneCount))
//}
//
//var str = readLine()!
//checked(str)

