import Foundation

let n = readLine()!.map{String($0)}.sorted(by: >).joined()

print(n)
