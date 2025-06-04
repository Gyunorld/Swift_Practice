import Foundation

let input1 = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input1[0]
let M = input1[1]

var arr = [[Character]]()
var visited = Array(repeating: Array(repeating: false, count: M), count: N)

for _ in 0..<N {
    let line = Array(readLine()!)
    arr.append(line)
}

func findRange(_ y:Int,_ x:Int) -> [Int] {
    let target = arr[y][x]
    var i = y
    while i < N && arr[i][x] == target {
        i += 1
    }
    var j = x
    while j < M && arr[y][j] == target {
        j += 1
    }
    return [i-1, j-1]
}

func possible(rs: Int, cs: Int, re: Int, ce: Int) -> Bool {
    let target = arr[rs][cs]
    for i in rs...re {
        for j in cs...ce {
            visited[i][j] = true

            if arr[i][j] != target {
                return false
            }
            if i == rs, i - 1 >= 0, arr[i - 1][j] == target {
                return false
            }
            if i == re, i + 1 < N, arr[i + 1][j] == target {
                return false
            }
            if j == cs, j - 1 >= 0, arr[i][j - 1] == target {
                return false
            }
            if j == ce, j + 1 < M, arr[i][j + 1] == target {
                return false
            }
        }
    }
    return true
}

for i in 0..<N {
    for j in 0..<M {
        if visited[i][j] { continue }
        let range = findRange(i, j)
        if !possible(rs: i, cs: j, re: range[0], ce: range[1]) {
            print("BaboBabo")
            exit(0)
        }
    }
}
print("dd")
