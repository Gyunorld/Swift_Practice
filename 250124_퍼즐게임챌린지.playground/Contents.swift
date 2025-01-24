import Foundation

//MARK: - 이분탐색
func solution(_ diffs:[Int], _ times:[Int], _ limit:Int64) -> Int {
    
    var end = diffs.max() ?? 1
    var start = 1
    var result = end
    
    while start <= end {
        let mid = (start + end) / 2
        var time = 0
        var time_prev = 0
        for (index,diff) in diffs.enumerated() {
            if diff <= mid {
                time += times[index]
            }else{
                time += (times[index] + time_prev) * (diff - mid) + times[index]
            }
            time_prev = times[index]
        }
        
        if time > limit {
            start = mid + 1
        } else {
            end = mid - 1
            result = mid
        }
    }
    
    return result
}

print(solution([1, 5, 3], [2, 4, 7], 30))
print(solution([1, 4, 4, 2], [6, 3, 8, 2], 59))
print(solution([1, 328, 467, 209, 54], [2, 7, 1, 4, 3], 1723))
print(solution([1, 99999, 100000, 99995], [9999, 9001, 9999, 9001], 3456789012))
