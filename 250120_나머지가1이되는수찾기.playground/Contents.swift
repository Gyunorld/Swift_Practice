import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    for i in 2..<n {
        if n % i == 1 {
            answer = i
            break
        }
    }
    return answer
}

print(solution(10))
print(solution(12))
