import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sum = 0
    var count = 0
    var money = budget
    
    for i in d.sorted(by: <) {
        sum += i
        if i <= money {
            count += 1
            money -= i
        } else {
            break
        }
    }
    return count
}

print(solution([1,2,3,4,5], 10))
print(solution([1,3,2,5,4], 9))
print(solution([2,2,3,3], 10))
