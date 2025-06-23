import Foundation

//MARK: - Heap없이 구현

//struct Edge {
//    let to: Int
//    let cost: Int
//}
//
//let N = Int(readLine()!)!
//let M = Int(readLine()!)!
//
//var graph = Array(repeating: [Edge](), count: N + 1)
//
//for _ in 0..<M {
//    let input = readLine()!.split(separator: " ").map { Int($0)! }
//    let from = input[0], to = input[1], cost = input[2]
//    graph[from].append(Edge(to: to, cost: cost))
//    graph[to].append(Edge(to: from, cost: cost))
//}
//
//var visited = Array(repeating: false, count: N + 1)
//var edges: [Edge] = graph[1]
//visited[1] = true
//var totalCost = 0
//
//while !edges.isEmpty {
//
//    edges.sort { $0.cost < $1.cost }
//    let minEdge = edges.removeFirst()
//
//    if visited[minEdge.to] {
//        continue
//    }
//
//    visited[minEdge.to] = true
//    totalCost += minEdge.cost
//
//    for edge in graph[minEdge.to] {
//        if !visited[edge.to] {
//            edges.append(edge)
//        }
//    }
//}
//
//print(totalCost)

//MARK: - Heap으로 구현

struct Node: Comparable {
    let to: Int
    let cost: Int
    
    static func < (lhs: Node, rhs: Node) -> Bool {
        lhs.cost < rhs.cost
    }
}

struct MinHeap<T: Comparable> {
    private var heap = [T]()

    var isEmpty: Bool { heap.isEmpty }

    mutating func insert(_ value: T) {
        heap.append(value)
        var i = heap.count - 1
        while i > 0 && heap[i] < heap[(i - 1) / 2] {
            heap.swapAt(i, (i - 1) / 2)
            i = (i - 1) / 2
        }
    }

    mutating func remove() -> T? {
        guard !heap.isEmpty else { return nil }
        if heap.count == 1 { return heap.removeFirst() }
        let root = heap[0]
        heap[0] = heap.removeLast()
        var i = 0
        while true {
            let left = i * 2 + 1
            let right = i * 2 + 2
            var smallest = i
            if left < heap.count && heap[left] < heap[smallest] {
                smallest = left
            }
            if right < heap.count && heap[right] < heap[smallest] {
                smallest = right
            }
            if smallest == i { break }
            heap.swapAt(i, smallest)
            i = smallest
        }
        return root
    }
}

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var graph = Array(repeating: [Node](), count: N + 1)
var visited = Array(repeating: false, count: N + 1)

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    let u = line[0], v = line[1], cost = line[2]
    graph[u].append(Node(to: v, cost: cost))
    graph[v].append(Node(to: u, cost: cost))
}

var pq = MinHeap<Node>()
visited[1] = true
for next in graph[1] {
    pq.insert(next)
}

var totalCost = 0

while !pq.isEmpty {
    guard let minEdge = pq.remove() else { break }

    if visited[minEdge.to] { continue }

    visited[minEdge.to] = true
    totalCost += minEdge.cost

    for next in graph[minEdge.to] {
        if !visited[next.to] {
            pq.insert(next)
        }
    }
}

print(totalCost)
