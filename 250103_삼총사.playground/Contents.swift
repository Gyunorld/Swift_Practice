import Foundation

func solution(_ number:[Int]) -> Int {
    var answer = 0
    
    for i in 0 ..< number.count {
        for j in i+1 ..< number.count {
            for k in j+1 ..< number.count {
               if number[i] + number[j] + number[k] == 0 {
                   answer += 1
               }
            }
        }
    }
    
    return answer
}

print(solution([-2, 3, 0, 2, -5]))
print(solution([-3, -2, -1, 0, 1, 2, 3]))
print(solution([-1, 1, -1, 1]))
