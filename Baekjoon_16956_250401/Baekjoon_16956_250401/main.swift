import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let r = input[0]
let c = input[1]
var arr = [[String]]()

for _ in 0..<r {
    var l = readLine()!.map{ String($0) }
    for i in 0..<c {
        if l[i] == "." {
            l[i] = "D"
        }
    }
    arr.append(l)
}

let dir = [(0,1),(0,-1),(1,0),(-1,0)]
var isSafe = true

for i in 0..<r {
    for j in 0..<c {
        if arr[i][j] != "W" {
            continue
        }
        for k in 0..<4 {
            let n = (i+dir[k].0, j+dir[k].1)
            if n.0 >= r || n.1 >= c || n.0 < 0 || n.1 < 0 {
                continue
            }
            if arr[n.0][n.1] == "S" {
                isSafe = false
                break
            }
        }
    }
}

if isSafe {
    print(1)
    arr.forEach {
        print($0.joined())
    }
} else {
    print(0)
}
