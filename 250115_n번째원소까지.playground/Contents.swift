import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return Array(num_list[...(n-1)])
}

print(solution([1,2,3,4,5], 2))
print(solution([2, 1, 6], 3))
print(solution([5, 2, 1, 7, 5], 2))
print(solution([2, 1, 6], 3))
print(solution([5, 2, 1, 7, 5], 3))
