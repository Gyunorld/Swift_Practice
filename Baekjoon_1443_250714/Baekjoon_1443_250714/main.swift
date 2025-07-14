import Foundation

let input = readLine()!.split(separator: " ").map({ Int($0)! })

let N = input[0]
let P = input[1]

var ans: Int64 = 0
dfs(1, 0, 9)
print(ans == 0 ? -1 : ans)

func dfs(_ num: Int64, _ cnt: Int, _ start: Int) {
    if String(num).count > N { return }
    
    if cnt == P {
        ans = max(ans, num)
        return
    }
    
    for i in stride(from: start, through: 2, by: -1) {
        dfs(num * Int64(i), cnt + 1, i)
    }
}
