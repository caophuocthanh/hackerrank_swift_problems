
import UIKit

func groupSort(arr: [Int]) -> [[Int]] {
    guard !arr.isEmpty else { return [] }
    var _arr = arr
    _arr.removeFirst()
    
    // get array result
    var result: [[Int]] = []
    for element in _arr {
        if result.contains(where: { $0[0] == element}) {
            for (i, item) in result.enumerated() {
                guard item[0] == element else { continue }
                result[i][1] += 1
            }
        } else {
            result.append([element, 1])
        }
    }
    
    // descending by frequency
    result = result.sorted(by: { $0[1] > $1[1]})
    
    // ascending by value for values with matching frequences
    result = result.sorted(by: {
        if $0[1] == $1[1] {
            return $0[0] < $1[0]
        } else {
            return $0[1] > $1[1]
        }
    })
    
    return result
}

let result = groupSort(arr: [3,7,12,3]) // [4,2,1,1,2]
// let result = groupSort(arr: [4,2,1,2,2]) // [4,2,1,1,2]
//let result = groupSort(arr: [3,3,1,2,1]) // [4,2,1,1,2]

print(result)
