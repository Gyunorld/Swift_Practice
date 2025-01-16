import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var lostSet: Set<Int> = Set(lost).subtracting(reserve)
    let reserveSet: Array<Int> = Array(Set(reserve).subtracting(lost)).sorted(by: <)
    
    for i in reserveSet {
        if lostSet.contains(i - 1){
            lostSet.remove(i - 1)
            continue
        } else if lostSet.contains(i + 1){
            lostSet.remove(i + 1)
        }
    }
    return n - lostSet.count
}

print(solution(5, [2, 4], [1, 3, 5]))
print(solution(5, [2, 4], [3]))
print(solution(3, [3], [1]))
print(solution(6, [6, 2, 4], [1, 5, 3]))

//reserveSet을 Set으로 했을 경우
//    1.    lostSet = {2, 4, 6} (차집합 처리)
//    2.    reserveSet = {1, 3, 5} (차집합 처리, 순서 없음)
//    3.    reserveSet의 순서에 따라 처리:
//    •    1: lostSet에 없음 → 넘어감
//    •    3: lostSet에 있음(2 + 1) → lostSet에서 2 제거 → lostSet = {4, 6}
//    •    5: lostSet에 있음(4 + 1) → lostSet에서 4 제거 → lostSet = {6}
//    4.    결과: n - lostSet.count = 6 - 1 = 5
//
//reserve를 Array를 했을 경우
//    1.    lost = {2, 4, 6} (차집합 처리)
//    2.    reserve = [1, 3, 5] (차집합 후 정렬)
//    3.    reserve의 순서에 따라 처리:
//    •    1: lost에 없음 → 넘어감
//    •    3: lost에 있음(2 + 1) → lost에서 2 제거 → lost = {4, 6}
//    •    5: lost에 있음(4 + 1) → lost에서 4 제거 → lost = {6}
//    4.    결과: n - lost.count = 6 - 1 = 5
