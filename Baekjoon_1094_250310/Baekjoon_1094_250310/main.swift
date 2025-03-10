import Foundation

var X = Int(readLine()!)!
var stick = 64;
var cnt = 0;

while X > 0 {
    if stick > X {
        stick /= 2
    } else {
        X -= stick
        cnt += 1
    }
}

print(cnt)
