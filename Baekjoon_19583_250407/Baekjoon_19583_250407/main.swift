import Foundation

let input = readLine()!.split(separator: " ").map{ String($0) }

let S = input[0]
let E = input[1]
let Q = input[2]

var start = Set<String>()
var finish = Set<String>()
var people = Set<String>()

while let str = readLine() {
    let set = str.split(separator: " ").map{ String($0) }
    let time = set[0]
    let name = set[1]
   
    people.insert(name)
    
    if time <= S {
        start.insert(name)
    } else if time >= E && time <= Q {
        finish.insert(name)
    }
}

var ans = 0
for name in people {
    if start.contains(name) && finish.contains(name) {
        ans += 1
    }
}

print(ans)
