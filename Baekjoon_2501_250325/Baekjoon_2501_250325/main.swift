import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
let k = input[1]
var divisors = [Int]()

for i in 1...Int(sqrt(Double(n))) {
    if n % i == 0 {
        divisors.append(i)
        divisors.append(n / i)
    }
}

divisors = Array(Set(divisors)).sorted(by: <)

divisors.count < k ? print(0) : print(divisors[k - 1])
