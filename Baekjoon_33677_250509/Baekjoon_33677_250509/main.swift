import Foundation

let N = Int(readLine()!)!

var water = [Int](repeating: Int.max, count: N + 1)
var day = [Int](repeating: Int.max, count: N + 1)

if N <= 1 {
    print("\(N) \(N)")
    exit(0)
}

day[0] = 0
water[0] = 0

day[1] = 1
water[1] = 1

for i in 2...N {
    
    if day[i-1] + 1 < day[i] || (day[i-1] + 1 == day[i] && water[i-1] + 1 < water[i]) {
        day[i] = day[i-1] + 1
        water[i] = water[i-1] + 1
    }
    
    if i % 3 == 0 {
        let sam =  i / 3
        if day[sam] + 1 < day[i] || (day[sam] + 1 == day[i] && water[sam] + 3 < water[i]) {
            day[i] = day[sam] + 1
            water[i] = water[sam] + 3
        }
    }
    
    let root = Int((Double(i).squareRoot()))
    if root * root == i {
        if day[root] + 1 < day[i] || (day[root] + 1 == day[i] && water[root] + 5 < water[i]) {
            day[i] = day[root] + 1
            water[i] = water[root] + 5
        }
    }
}

print("\(day[N]) \(water[N])")
