import Foundation

if let s = readLine() {
    let len = s.count
    let chars = Array(s)
    var result = ""
    
    for i in 0..<len - 1 {
        result.append(chars[i])
        
        if chars[i] == "(" && chars[i + 1] == ")" {
            result.append("1")
        }
        else if chars[i] == ")" && chars[i + 1] == "(" {
            result.append("+")
        }
    }
    
    result.append(chars[len - 1])
    
    print(result) 
}
