import Foundation

let N = Int(readLine()!)!
var books = [Int]()

for _ in 0..<N {
    books.append(Int(readLine()!)!)
}

books.reverse()

var noBook = N - 1
let bookPosition = books.firstIndex(of: N)!
var sortBook = N - 1

for i in (bookPosition + 1)..<N {
    if books[i] == noBook {
        noBook = books[i] - 1
        sortBook -= 1
    }
}

print(sortBook)
