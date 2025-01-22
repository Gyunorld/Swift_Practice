import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let no1 = [1,2,3,4,5]
    let no2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let no3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var score = [0,0,0]
    var answer: Array<Int> = [Int]()
    
    for i in 0..<answers.count {
        let num1 = i % no1.count
        let num2 = i % no2.count
        let num3 = i % no3.count
        
        if no1[num1] == answers[i] {
            score[0] += 1
        }
        if no2[num2] == answers[i] {
            score[1] += 1
        }
        if no3[num3] == answers[i] {
            score[2] += 1
        }
    }
    
    let max = score.max()
    for i in 0..<score.count {
        if max == score[i] {
            answer.append(i+1)
        }
    }
            
    return answer
}

//MARK: - 다른 사람의 풀이 (Dictionary 이용)

//func solution(_ answers:[Int]) -> [Int] {
//    let answer = (
//        a: [1, 2, 3, 4, 5], // index % 5
//        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
//        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
//    )
//    var point = [1:0, 2:0, 3:0]
//
//    for (i, v) in answers.enumerated() {
//        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
//        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
//        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
//    }
//
//    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
//}

print(solution([1,2,3,4,5]))
print(solution([1,3,2,4,2]))
