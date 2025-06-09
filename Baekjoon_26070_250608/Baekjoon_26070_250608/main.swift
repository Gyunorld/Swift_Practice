import Foundation

let input1 = readLine()!.split(separator: " ").map{ Int($0)! }
let input2 = readLine()!.split(separator: " ").map{ Int($0)! }

var ans = 0
var i = 0

//for i in 0..<3 {
//    let minus = input1[i] - input2[i]
//    if minus < 0 {
//        ans = input1[i]
//        var rest = abs(minus) / 3
//        let event = abs((input1[i + 1] - input2[i + 1]) - rest)
//        if event > 0 {
//            ans += abs(input1[i + 1] - input2[i + 1])
//        }
//        print(event)
//    } else {
//        ans += input2[i]
//    }
//}
var rest = 0

while true {
    i = (i + 1) % 3
    let gap = input1[i] - input2[i]
    if gap < 0 {
        ans += input1[i]
        rest = abs(gap) / 3
        let event = rest - (input1[i + 1] - input2[i + 1])
        if event > 0 {
            ans += abs(input1[i + 1] - input2[i + 1])
            let event2 = event / 3
            if event2 != 0 {
                ans += event2
                rest -= event2
            }
        }
    } else {
        ans += input2[i]
    }
    
    if rest == 0 {
        break
    }
}

print(ans)
