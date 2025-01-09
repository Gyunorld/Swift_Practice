import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    return [Int](start_num ... end_num)
}

print(solution(3, 10))
print(solution(25, 45))
