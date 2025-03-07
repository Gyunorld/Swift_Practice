import Foundation

let n = Int(readLine()!)!
var onoff = readLine()!.split(separator: " ").map{ Int($0)!}
let lightCnt = onoff.count
onoff.insert(0, at: 0)
let num = Int(readLine()!)!

for _ in 0..<num {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    let gender = input[0]
    let switchNum = input[1]
    var ran = 1
    
    switch gender {
    case 1:
        let share = lightCnt / switchNum
        for i in 1..<share+1 {
            let idx = switchNum * i
            toggle(idx)
        }
    case 2:
        while true {
            if check(switchNum, ran) {
                toggle(switchNum - ran)
                toggle(switchNum + ran)
            } else {
                toggle(switchNum)
                break
            }
            ran += 1
        }
    default:
        break
    }
}

onoff.removeFirst()

if onoff.count < 21 {
    print(onoff.map{ String($0) }.joined(separator: " "))
} else {
    let p = lightCnt / 20
    let rest = lightCnt % 20
        var idx = -20
        for _ in 0..<p {
            idx += 20
            for j in 0..<20 {
                print(onoff[idx+j], terminator: " ")
            }
            print()
        }
        if rest != 0 {
            idx += 20
            for j in 0..<rest {
                print(onoff[idx+j], terminator: " ")
            }
        }
}

func toggle(_ idx: Int) {
    if onoff[idx] == 0 {
        onoff[idx] = 1
    } else {
        onoff[idx] = 0
    }
}

func check(_ idx:Int, _ range: Int) -> Bool {
    if idx - range < 1 || idx + range > lightCnt {
        return false
    }
    return onoff[idx - range] == onoff[idx + range] ? true : false
}
