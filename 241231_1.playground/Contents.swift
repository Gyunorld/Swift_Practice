// https://school.programmers.co.kr/learn/courses/30/lessons/181932?language=swift
// 코드처리하기

import Foundation

func solution(_ code:String) -> String {
    var ret = ""
    var mode = 0
    let arr = Array(code)
    for i in 0..<code.count {
        if(mode == 0) {
            if(arr[i] != "1" && i % 2 == 0){
                ret += String(arr[i])
            } else if arr[i] == "1" {
                mode = 1
            }
        } else if (mode == 1) {
            if(arr[i] != "1" && i % 2 != 0){
                ret += String(arr[i])
            } else if arr[i] == "1" {
                mode = 0
            }
        }
    }
    return ret == "" ? "EMPTY" : ret
}

print(solution("abc1abc1abc"))
