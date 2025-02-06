import Foundation

let array = readLine()!.split(separator: " ").map{ Int($0)!}

if array == array.sorted(by: <) {
    print("ascending")
} else if array == array.sorted(by: >) {
    print("descending")
} else {
    print("mixed")
}
