import Foundation

let pay = Int(readLine()!)!
var change = 1000 - pay
var cnt = 0

if change != 0 {
    
    if change / 500 != 0 {
        cnt += change / 500
        change -= 500 * cnt
    }
    
    if change / 100 != 0 {
        cnt += change / 100
        change -= 100 * (change/100)
    }
    
    if change / 50 != 0 {
        cnt += change / 50
        change -= 50 * (change/50)
    }
    
    if change / 10 != 0 {
        cnt += change / 10
        change -= 10 * (change/10)
    }
    
    if change / 5 != 0 {
        cnt += change / 5
        change -= 5 * (change/5)
    }
    
    if change / 1 != 0 {
        cnt += change / 1
        change -= 1 * (change/1)
    }
    
} else {
    print(0)
}

print(cnt)
