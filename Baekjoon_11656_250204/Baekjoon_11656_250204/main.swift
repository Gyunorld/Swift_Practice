import Foundation

let string = readLine()!.map{String($0)}.reversed()
var arr: [String] = []

for i in 1...string.count {
    var dictionary = string.prefix(i).reversed().joined(separator: "")
    arr.append(dictionary)
}

arr.sort()

for i in 0..<arr.count {
    print(arr[i],terminator: "\n")
}

//MARK: - 12ms 걸리는 코드
//let string = readLine()!
//var arr = [String]()
//
//for i in string.indices {
//    arr.append(String(string[i..<string.endIndex]))
//}
//
//print(arr.sorted().joined(separator: "\n"))
