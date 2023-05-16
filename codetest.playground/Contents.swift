import UIKit

var arr = [1,2,3,4,5,6,7]

var num = 0
func test (_ arr:[Int]) -> Double {
    for i in arr {
        num += i
    }
    return Double(num / arr.count)
}

test(arr)
