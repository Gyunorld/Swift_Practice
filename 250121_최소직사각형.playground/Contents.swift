import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var size = sizes
    let count = sizes.count
    
    var x: [Int] = []
    var y: [Int] = []
    
    for i in 0..<count {
        size[i].sort()
        x.append(size[i][0])
        y.append(size[i][1])
    }
    return x.max()! * y.max()!
}

//MARK: - 다른 사람의 풀이
//func solution(_ sizes:[[Int]]) -> Int {
//    var maxNum = 0
//    var minNum = 0
//
//    for size in sizes {
//        maxNum = max(maxNum, size.max()!)
//        minNum = max(minNum, size.min()!)
//    }
//    return maxNum * minNum
//}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))
print(solution([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]))
