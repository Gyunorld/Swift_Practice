import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var even = 0
    var odd = 0
    
    for i in num_list {
        if i % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    
    return [even,odd]
}

print(solution([1, 2, 3, 4, 5]))
print(solution([1, 3, 5, 7]))
print(solution([2, 4, 6, 8]))
