import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    return stride(from: start_num, to: end_num - 1, by: -1).map{$0}
}

print(solution(10, 3))
print(solution(5, 3))
print(solution(20, 10))
