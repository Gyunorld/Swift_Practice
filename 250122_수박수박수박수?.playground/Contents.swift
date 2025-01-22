func solution(_ n:Int) -> String {
    var result = ""
    for i in 0..<n {
        if i % 2 == 0 {
            result.append("수")
        } else {
            result.append("박")
        }
    }
    return result
}

//MARK: - 다른 사람의 풀이
//func solution(_ n:Int) -> String {
//    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
//}

print(solution(3))
print(solution(4))
print(solution(11))
