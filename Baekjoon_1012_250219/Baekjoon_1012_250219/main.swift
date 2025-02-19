import Foundation

let num = Int(readLine()!)!


for _ in 1...num {
    let tc = readLine()!.split(separator: " ").map { Int($0)! }
    let rows = tc[1] // 행
    let columns = tc[0] // 열
    var array = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    
    func find(row: Int, column: Int) {
        array[row][column] = 0
        if column-1 > -1 && array[row][column-1] == 1 {
            find(row: row, column: column-1)
        }
        if column+1 < columns && array[row][column+1] == 1 {
            find(row: row, column: column+1)
        }
        if row+1 < rows && array[row+1][column] == 1 {
            find(row: row+1, column: column)
        }
        if row-1 > -1 && array[row-1][column] == 1 {
            find(row: row-1, column: column)
        }
    }
    for _ in 1...tc[2] {
        let tmp = readLine()!.split(separator: " ").map { Int($0)! }
        array[tmp[1]][tmp[0]] = 1
    }
    
    var count = 0
    
    for i in 0..<rows {
        for j in 0..<columns {
            if array[i][j] == 1 {
                find(row: i, column: j)
                count+=1
            }
        }
    }
    print(count)
}
