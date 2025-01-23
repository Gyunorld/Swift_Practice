import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()

    for command in commands {
        let i = command[0]-1
        let j = command[1]-1
        let k = command[2]-1
        let sorted = array[i...j].sorted()
        result.append(sorted[k])
    }
    
    return result
}

//MARK: - 다른 사람의 풀이

//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//        return commands.map({(key) in
//            return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
//        })
//
//    }

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
