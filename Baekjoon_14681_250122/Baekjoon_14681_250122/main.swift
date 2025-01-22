//
//  main.swift
//  Baekjoon_14681_250122
//
//  Created by 김민규 on 1/22/25.
//

import Foundation

let first = readLine()!
let second = readLine()!

var x = Int(first)!
var y = Int(second)!

if x > 0 && y > 0 {
    print("1")
} else if x < 0 && y > 0 {
    print("2")
} else if x < 0 && y < 0 {
    print("3")
} else if x > 0 && y < 0 {
    print("4")
}

