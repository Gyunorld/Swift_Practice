import Foundation

let testcase = Int(readLine()!)!
var floors = [Int]()
var rooms = [Int]()

//MARK: - 내가 푼 방법
for _ in 0..<testcase {
    floors.append(Int(readLine()!)!)
    rooms.append(Int(readLine()!)!)
}

var apt = Array(repeating: Array(repeating: 0, count: rooms.max()!), count: floors.max()! + 1)
for i in 0...floors.max()! {
    for j in 0..<rooms.max()! {
        if i == 0 {
            apt[i][j] = j + 1
            continue
        } else {
            apt[i][j] = j == 0 ? 1 : apt[i - 1][j] + apt[i][j - 1]
        }
    }
}

for i in 0..<testcase {
    print(apt[floors[i]][rooms[i]-1])
}

//MARK: - 영록님 코드를 swift로 바꿔봄

//var apt = Array(repeating: Array(repeating: 0, count: 15), count: 15)
//
//for i in 1..<15 {
//    apt[0][i] = i
//}
//
//for i in 1..<15 {
//    for j in 1..<15 {
//        apt[i][j] = apt[i-1][j] + apt[i][j-1]
//    }
//}
//
//for _ in 0..<testcase {
//    if let floor = Int(readLine()!), let room = Int(readLine()!) {
//            floors.append(floor)
//            rooms.append(room)
//        }
//}
//
//for i in 0..<testcase {
//    print(apt[floors[i]][rooms[i]])
//}
