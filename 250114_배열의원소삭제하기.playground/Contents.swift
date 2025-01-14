import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    return arr.filter{ !delete_list.contains($0) }
}

print(solution([1,2,3,4,5], [2,3]))
print(solution([293, 1000, 395, 678, 94], [94, 777, 104, 1000, 1, 12]))
print(solution([110, 66, 439, 785, 1], [377, 823, 119, 43]))
