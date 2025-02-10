import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let p = Int(readLine()!)!
    var maxPrice = 0
    var maxName = ""
    
    for _ in 0..<p {
        let input = readLine()!.split(separator: " ")
        let price = Int(input[0])!
        let name = String(input[1])
        
        if price > maxPrice {
            maxPrice = price
            maxName = name
        }
    }
    print(maxName)
}
