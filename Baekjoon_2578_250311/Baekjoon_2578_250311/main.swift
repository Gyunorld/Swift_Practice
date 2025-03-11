import Foundation

var bingo = [[Int]](repeating: [Int](repeating: 0, count: 5), count: 5)
var bingoPan = [[Bool]](repeating: [Bool](repeating: false, count: 5), count: 5)

for i in 0..<5 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    bingo[i] = input
}

func checkBingo() -> Int {
    var bingoCount = 0
    
    for i in 0..<5 {
        if bingoPan[i].allSatisfy({ $0 }) {
            bingoCount += 1
        }
    }
    
    for j in 0..<5 {
        if (0..<5).allSatisfy({ bingoPan[$0][j] }) {
            bingoCount += 1
        }
    }
    
    if (0..<5).allSatisfy({ bingoPan[$0][$0] }) {
        bingoCount += 1
    }
    
    if (0..<5).allSatisfy({ bingoPan[$0][4-$0] }) {
        bingoCount += 1
    }
    
    return bingoCount
}

var count = 0

for _ in 0..<5 {
    let calls = readLine()!.split(separator: " ").map { Int($0)! }
    
    for call in calls {
        count += 1
        for i in 0..<5 {
            for j in 0..<5 {
                if bingo[i][j] == call {
                    bingoPan[i][j] = true
                }
            }
        }
        if checkBingo() >= 3 {
            print(count)
            exit(0)
        }
    }
}
