import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var array = arr
    queries.forEach { array.swapAt($0[0],$0[1]) }
    return array
}

print(solution([0, 1, 2, 3, 4], [[0, 3],[1, 2],[1, 4]]))
