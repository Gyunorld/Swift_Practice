import Foundation

func solution(_ name:String) -> Int {
    var answer = 0
    let nameArray = Array(name)
    var move = name.count - 1
    
    for i in 0..<name.count {
        let charValue = nameArray[i].asciiValue! - Character("A").asciiValue!
        answer += min(Int(charValue), 26 - Int(charValue))
        
        if i < name.count - 1 && nameArray[i + 1] == "A" {
            var endA = i + 1
            while endA < name.count && nameArray[endA] == "A" {
                endA += 1
            }
            move = min(move, i * 2 + (name.count - endA))
            move = min(move, i + (name.count - endA) * 2)
        }
    }
    return answer + move
}

print(solution("JEROEN"))
print(solution("JAN"))
print(solution("JAZ"))
