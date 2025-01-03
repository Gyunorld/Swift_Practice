import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var total = 0
    
    var sheep = n * 12000
    var juice = (k * 2000) - ((n/10) * 2000)
    
    total = sheep + juice
    
    return total
}

print(solution(10, 3))
print(solution(64, 6))
