import Foundation

let n = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
let m = Int(readLine()!)!
var mList = readLine()!.split(separator: " ").map { Int($0)! }

func binarySearch(_ arr: [Int], _ target: Int) -> Int {
    var start = 0
    var last = arr.count - 1
    
    while start <= last {
        let mid = (start + last) / 2
        if arr[mid] == target {
            return 1
        } else if arr[mid] < target {
            start = mid + 1
        } else {
            last = mid - 1
        }
    }
    return 0
}

for i in 0..<m {
    print(binarySearch(A, mList[i]))
}
