import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    switch(ineq, eq){
        case(">", "="):return n >= m ? 1 : 0
        case("<", "="):return n <= m ? 1 : 0
        case(">", "!"):return n > m ? 1 : 0
        case("<", "!"):return n < m ? 1 : 0
    default : return 0
    }
}

print(solution("<", "=", 1, 2))
print(solution("<", "=", 20, 50))
print(solution(">", "!", 41, 78))
