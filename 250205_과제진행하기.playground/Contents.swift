import Foundation

struct Task {
    let name: String
    let start: Int
    var time: Int
    
    init(name: String, start: String, time: String) {
        self.name = name
        let formatTime = start.components(separatedBy: ":")
        self.start = Int(formatTime.first!)! * 60 + Int(formatTime.last!)!
        self.time = Int(time)!
    }
}

func solution(_ plans:[[String]]) -> [String] {
    
    var taskList:[Task] = plans.map { Task(name: $0[0], start: $0[1], time: $0[2]) }.sorted { $0.start < $1.start }
    
    var pause: [Task] = []
    var result: [String] = []
    
    while true {
        var task = taskList.removeFirst()
        
        if taskList.isEmpty {
            result.append(task.name)
            break
        }
        
        let runableTime = taskList.first!.start - task.start
        var remainingTime = task.time - runableTime
        
        if remainingTime == 0 {
            result.append(task.name)
            continue
        } else if 0 < remainingTime {
            task.time = remainingTime
            pause.append(task)
            continue
        } else {
            result.append(task.name)
            while !pause.isEmpty {
                var resume = pause.removeLast()
                remainingTime = resume.time + remainingTime
                
                if remainingTime <= 0 {
                    result.append(resume.name)
                    continue
                } else if 0 < remainingTime {
                    resume.time = remainingTime
                    pause.append(resume)
                    break
                }
            }
        }
    }
    pause.reversed().forEach { result.append($0.name) }
    
    return result
}

print(solution([["korean", "11:40", "30"], ["english", "12:10", "20"], ["math", "12:30", "40"]]))
print(solution([["science", "12:40", "50"], ["music", "12:20", "40"], ["history", "14:00", "30"], ["computer", "12:30", "100"]]))
print(solution([["aaa", "12:00", "20"], ["bbb", "12:10", "30"], ["ccc", "12:40", "10"]]))
