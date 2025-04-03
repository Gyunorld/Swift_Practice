import Foundation

let keyboard: [[Character]] = [
    ["`","1","2","3","4","5","6","7","8","9","0","-","="],
    ["Q","W","E","R","T","Y","U","I","O","P","[","]","\\"],
    ["A","S","D","F","G","H","J","K","L",";","'"],
    ["Z","X","C","V","B","N","M",",",".","/"]
]

while let typing = readLine() {
    var ans = ""
    
    for type in typing {
        if type == " " {
            ans.append(type)
            continue
        }
        
        var found = false
        for correct in keyboard {
            if let idx = correct.firstIndex(of: type), idx > 0 {
                ans.append(correct[idx - 1])
                found = true
                break
            }
        }
    }
    print(ans)
}
