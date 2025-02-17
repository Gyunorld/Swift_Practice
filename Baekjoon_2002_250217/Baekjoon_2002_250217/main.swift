import Foundation

let carCnt = Int(readLine()!)!

var inCar = Dictionary<String, Int>()
var outCar = [String]()

for i in 0..<carCnt {
    inCar[readLine()!] = i
}

for _ in 0..<carCnt {
    outCar.append(readLine()!)
}

func pass() -> Int {
    var cnt = 0
    while true {
        if outCar.count <= 1 {
            return cnt
        }
        for i in 0..<outCar.count-1 {
            if inCar[outCar[i]]! > inCar[outCar[i+1]]! {
                outCar.remove(at: i)
                cnt += 1
                break
            }
        }
        if isSorted(){
            break
        }
    }
    return cnt
}

func isSorted() -> Bool {
    if outCar.count <= 1 {
        return true
    }
    for i in 0..<outCar.count-1 {
        if inCar[outCar[i]]! > inCar[outCar[i+1]]! {
            return false
        }
    }
    return true
}

print(pass())
