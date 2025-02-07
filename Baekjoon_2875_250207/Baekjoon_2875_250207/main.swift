import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

var female = input[0]
var male = input[1]
var intern = input[2]

while  intern > 0 {
    intern -= 1
    if female / 2 >= male {
        female -= 1
    } else {
        male -= 1
    }
}

print(female/2 >= male ? male : female/2)
