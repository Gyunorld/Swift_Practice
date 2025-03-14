import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var a = input[0]
var b = input[1]

var c = 0
var score = 512

while (score > 0) {
    var cnt = 0;
    
    if(a >= score) {
        cnt+=1
        a-=score
    }
    
    if(b >= score) {
        cnt+=1
        b-=score
    }
    
    if cnt == 1 {
        c += score
    }
    
    score /= 2
}

print(c)
