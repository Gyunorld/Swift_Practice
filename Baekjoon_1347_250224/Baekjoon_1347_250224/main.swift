import Foundation

let N = Int(readLine()!)!
let note = Array(readLine()!)

let dx = [1, 0, -1, 0]
let dy = [0, -1, 0, 1]
var dir = 0

var maxX = 50, maxY = 50
var minX = 50, minY = 50
var x = 50, y = 50

var path: [[Int]] = [[x, y]]

for command in note {
    if command == "R" {
        dir = (dir + 1) % 4
    } else if command == "L" {
        dir = (dir + 3) % 4
    } else if command == "F" {
        x += dx[dir]
        y += dy[dir]

        maxX = max(maxX, x)
        maxY = max(maxY, y)
        minX = min(minX, x)
        minY = min(minY, y)

        path.append([x, y])
    }
}


var map = Array(repeating: Array(repeating: "#", count: 101), count: 101)


for pos in path {
    map[pos[0]][pos[1]] = "."
}


for i in minX...maxX {
    print(map[i][minY...maxY].joined()) 
}
