import Foundation

let N = Int(readLine()!)!
var line : [(Int, Int)] = []
var cache = [Int](repeating: 1, count: N)

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let a = input[0]
    let b = input[1]
    line.append((a,b))
}

line = line.sorted {$0.0 < $1.0}
let array = line.map {$0.1}

for i in 1..<N {
    for j in 0...i {
        if array[i] > array[j] {
            cache[i] = max(cache[i], cache[j]+1)
        }
    }
}

print(N - cache.max()!)
