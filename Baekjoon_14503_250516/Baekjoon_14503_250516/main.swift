import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]

let robotInput = readLine()!.split(separator: " ").map { Int($0)! }
var r = robotInput[0]
var c = robotInput[1]
var d = robotInput[2]
 
var room = [[Int]]()
for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    room.append(row)
}

var cnt = 0
let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

func cleaning() {
    while true {
        if room[r][c] == 0 {
            room[r][c] = 2
            cnt += 1
        }
        if scan() {
            while true {
                d = d - 1 < 0 ? d - 1 + 4 : d - 1
                if room[r + dx[d]][c + dy[d]] == 0 {
                    r += dx[d]
                    c += dy[d]
                    break
                }
            }
        }
        else {
            if room[r - dx[d]][c - dy[d]] != 1 {
                r -= dx[d]
                c -= dy[d]
            } else {
                break
            }
        }
    }
}

func scan() -> Bool {
    for i in 0..<4 {
        let nx = r + dx[i]
        let ny = c + dy[i]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < m && room[nx][ny] == 0 {
            return true
        }
    }
    return false
}

cleaning()
print(cnt)
