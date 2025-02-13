import Foundation

let n = Int(readLine()!)!

var books = [String]()

for _ in 0..<n {
    let title = readLine()!
    books.append(title)
}

let bookCount = books.reduce(into: [:]) { counts, book in
    counts[book, default: 0] += 1
}

let bestSeller = bookCount.filter { $0.value == bookCount.values.max()! }.keys.sorted().first!

print(bestSeller)
