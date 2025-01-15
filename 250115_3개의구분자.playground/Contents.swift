import Foundation

func solution(_ myStr:String) -> [String] {
    let answer = myStr.components(separatedBy: ["a","b","c"]).filter { $0 != "" }
    return answer == [] ? ["EMPTY"] : answer
}

//MARK: - 짧은 풀이 
//func solution(_ myStr:String) -> [String] {
//    return myStr.split { $0 == "a" || $0 == "b" || $0 == "c" }.map { String($0) }
//}

print(solution("baconlettucetomato"))
print(solution("abcd"))
print(solution("cabab"))
print(solution("newajeansbminjicpretty"))
