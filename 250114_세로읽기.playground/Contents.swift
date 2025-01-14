import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    var result = ""
    let array = Array(my_string)
    
    for i in stride(from: c-1, to: array.count, by: m){
        result.append(array[i])
    }
    return result
}

//MARK: - 간략한 버전
//func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
//    return my_string.enumerated()
//        .filter{ $0.offset % m == c-1 }
//        .map{ String($0.element) }
//        .joined()
//}

print(solution("ihrhbakrfpndopljhygc", 4, 2))
print(solution("programmers", 1, 1))
