import Foundation

let map = readLine()!.split(separator: " ").map{ Int(String($0))! }
let w = map[0]
let h = map[1]

let ant = readLine()!.split(separator: " ").map{ Int(String($0))! }
let x = ant[0]
let y = ant[1]

let t = Int(readLine()!)!

var p = (x + t) % (w * 2)
var q = (y + t) % (h * 2)

if p > w {
    p = w - (p - w)
}
if q > h {
    q = h - (q - h)
}

print(p, q, separator: " ")
