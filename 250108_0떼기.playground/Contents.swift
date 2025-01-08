import Foundation


//func solution(_ n_str:String) -> String {
//    var answer = n_str
//    while answer.prefix(1) == "0" {
//        answer = String(answer.dropFirst())
//    }
//    return answer
//}
// 시간 초과 이슈 발생 -> while문의 반복 호출

func solution(_ n_str:String) -> String {
    let trimmedString = n_str.drop { $0 == "0" }
    return String(trimmedString)
}

print(solution("0010"))
print(solution("123456"))
print(solution("854020"))
