import Foundation

let N = Int(readLine()!)!
let cnt = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}

var photo: [Int: (Int, Int)] = [:]

for i in 0..<cnt {
    if photo[arr[i]] != nil {
        photo[arr[i]]!.0 += 1
    } else {
        if photo.count < N {
            photo[arr[i]] = (1, i)
        } else {
            let sortedList = photo.sorted { a, b in
                if a.value.0 == b.value.0 {
                    return a.value.1 < b.value.1
                }
                return a.value.0 < b.value.0
            }
            photo[sortedList[0].key] = nil
            photo[arr[i]] = (1, i)
        }
    }
}

var ans = [String]()
for i in photo.sorted(by: {$0.key < $1.key}) {
    ans.append("\(i.key)")
}

print(ans.joined(separator: " "))
