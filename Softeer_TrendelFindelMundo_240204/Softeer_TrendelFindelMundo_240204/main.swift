import Foundation

let stationNum = Int(readLine()!)!
var stationLocation: [(Int, Int)] = []

for _ in 0..<stationNum {
    let point = readLine()!.split(separator: " ")
    stationLocation.append( (Int(point[0])!, Int(point[1])!) )
}

if let southStation = stationLocation.min(by: {$0.1 < $1.1}){
    print(southStation.0, southStation.1)
}

