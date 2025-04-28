import Foundation

let chicken = Int(readLine()!)!

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let cola = input[0] / 2
let beer = input[1]

var ans = 0

if chicken < cola + beer {
    print(chicken)
} else {
    print(cola + beer)
}
