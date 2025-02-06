import Foundation

let s = readLine()!.map{ $0.asciiValue! }
let answer = (97...122).map{ s.firstIndex(of: $0) ?? -1 }

answer.forEach{ print($0,terminator: " ") }
