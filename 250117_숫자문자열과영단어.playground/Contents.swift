import Foundation

func solution(_ s:String) -> Int {
    var result = s
    let number = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    
    for i in 0..<number.count {
        result = result.replacingOccurrences(of: number[i], with: String(i))
    }
    
    return Int(result)!
}

print(solution("one4seveneight"))
print(solution("23four5six7"))
print(solution("2three45sixseven"))
print(solution("123"))
