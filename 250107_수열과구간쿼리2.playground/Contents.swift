import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for query in queries {
        let (s, e, k) = (query[0], query[1], query[2])
        result.append(arr[s...e].filter{$0 > k}.sorted(by:<).first ?? -1)
    }
    
    return result
}

// 참고할만한 다른 사람의 풀이
//func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
//    return queries.map {
//        let (s, e, k) = ($0[0], $0[1], $0[2])
//        return Array(arr[s...e]).filter { $0 > k }.min() ?? -1
//    }
//}

print(solution([0, 1, 2, 4, 3], [[0, 4, 2],[0, 3, 2],[0, 2, 2]]))
