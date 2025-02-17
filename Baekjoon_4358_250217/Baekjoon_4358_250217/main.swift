import Foundation

var treeList = [String:Double]()
var total:Double = 0

while let line = readLine() {
    total += 1
    let tree = treeList[line] ?? 0
    treeList[line] = tree + 1
}

let result = treeList.sorted(by: {$0.key < $1.key})

func getPercentage(value:Double) -> String {
    let percent = value / total * 100
    let rounded = round(percent * 10000) / 10000
    return String(format: "%.4f", rounded)
}

for tree in result {
    print("\(tree.key) \(getPercentage(value: tree.value))")
}

