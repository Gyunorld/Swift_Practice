import Foundation

var arr = [Int]()

for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}

var sum = arr.reduce(0, +)

for i in 0..<arr.count - 1 {
    for j in i + 1..<arr.count {
        if sum - arr[i] - arr[j] == 100 {
            arr.remove(at: i)
            arr.remove(at: j - 1)
            break
        }
    }
    if arr.count == 7 {
        break
    }
}

for i in arr.sorted() {
    print(i)
}
