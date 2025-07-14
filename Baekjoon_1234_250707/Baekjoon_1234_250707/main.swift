import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], R = input[1], G = input[2], B = input[3]

// 최대 combi 계산 크기
let MAX = 50
typealias LL = Int64

// 파스칼 삼각형 기반 조합 메모이제이션
var comb = [[LL]](repeating: [LL](repeating: 0, count: MAX + 1), count: MAX + 1)
func precomputeCombi() {
    for n in 0...MAX {
        comb[n][0] = 1
        for r in 1...n {
            comb[n][r] = comb[n - 1][r - 1] + comb[n - 1][r]
        }
    }
}
precomputeCombi()

// 3차원 배열 생성 함수
func makeDP() -> [[[LL]]] {
    return Array(repeating: Array(repeating: Array(repeating: 0, count: B + 1), count: G + 1), count: R + 1)
}

var prev = makeDP()
var curr = makeDP()
prev[R][G][B] = 1  // 초기 상태: 모든 색 남음

for i in 1...N {
    curr = makeDP()

    for r in 0...R {
        for g in 0...G {
            for b in 0...B {
                let val = prev[r][g][b]
                if val == 0 { continue }

                // 🎨 단색
                if r >= i { curr[r - i][g][b] += val }
                if g >= i { curr[r][g - i][b] += val }
                if b >= i { curr[r][g][b - i] += val }

                // 🎨 2색 조합 (짝수)
                if i % 2 == 0 {
                    let d = i / 2
                    let c = comb[i][d]
                    if g >= d && b >= d {
                        curr[r][g - d][b - d] += val * c
                    }
                    if r >= d && b >= d {
                        curr[r - d][g][b - d] += val * c
                    }
                    if r >= d && g >= d {
                        curr[r - d][g - d][b] += val * c
                    }
                }

                // 🎨 3색 조합 (3의 배수)
                if i % 3 == 0 {
                    let d = i / 3
                    let c = comb[i][d] * comb[i - d][d]
                    if r >= d && g >= d && b >= d {
                        curr[r - d][g - d][b - d] += val * c
                    }
                }
            }
        }
    }

    // 다음 단계로 이동
    swap(&prev, &curr)
}

print(prev[0][0][0])
