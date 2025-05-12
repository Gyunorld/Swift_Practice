import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var JHmoney = N
var JHstock = 0

for i in 0..<arr.count {
    if JHmoney / arr[i] > 0 {
        let cnt = JHmoney / arr[i]
        JHstock += cnt
        JHmoney -= cnt * arr[i]
    }
}

var SMmoney = N
var SMstock = 0

for i in 0..<arr.count - 3 {
    if arr[i] > arr[i + 1] && arr[i + 1] < arr[i + 2] {
        if SMstock == 0 {
            continue
        }
        SMmoney += SMstock * arr[i + 3]
        SMstock = 0
    }
    else if arr[i] > arr[i + 1] && arr[i + 1] > arr[i + 2] {
        if SMmoney / arr[i + 3] > 0 {
            let cnt = SMmoney / arr[i + 3]
            SMstock += cnt
            SMmoney -= cnt * arr[i + 3]
        }
    }
}

let JHreturn = JHmoney + arr.last! * JHstock
let SMreturn = SMmoney + arr.last! * SMstock

if JHreturn > SMreturn {
    print("BNP")
} else if JHreturn < SMreturn {
    print("TIMING")
} else {
    print("SAMESAME")
}
