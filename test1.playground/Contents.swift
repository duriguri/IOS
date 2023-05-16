import UIKit

// 0 가위, 1 바위, 2 보
var num :Int = Int.random(in: 0...2)
var rps :Int = 1
let closedRange = 1...5

if num == rps {
    print("당신은 비겼습니다.")
}else if num == 0 && rps == 1 {
    print ("당신은 이겼습니다.")
}else if num == 0 && rps == 2 {
    print("당신은 졌습니다.")
}else if num == 1 && rps == 0 {
    print ("당신은 졌습니다.")
}else if num == 1 && rps == 2 {
    print("당신은 이겼습니다.")
}else if num == 2 && rps == 0 {
    print ("당신은 이겼습니다.")
}else if num == 2 && rps == 1 {
    print("당신은 졌습니다.")
}


if num == rps {
    print("당신은 비겼습니다.")
}else if num == 0 && rps == 2 {
    print("당신은 이겼습니다.")
}else if num == 1 && rps == 0 {
    print("당신은 이겼습니다.")
}else if num == 2 && rps == 1 {
    print("당신은 이겼습니다.")
}else {
    print("당신은 졌습니다.")
}

var computerPick = Int.random(in: 0...10)
var myPick = 5

if computerPick == myPick {
    print("Bingo")
} else if computerPick > myPick {
    print("Up")
} else {
    print("Down")
}

let ios = (lan:"swift", version:5)
switch ios {
case("swift", 4):
    print("5")
case("rpa", 5):
    print("rpa")
case("swift", 5):
    print("확인")
default:
    break
}

let coordinate = (3, 4)
switch coordinate {
case (let x, let y) where x == y:
    print("check")
case let(x, 4):
    print("\(x)")
default:
    break
}

let coordinate2 = (-3,2)
switch coordinate2 {
case (0,0):
    print("0")
case (-5...0, 1...10):
    print("확인")
default:
    break
}

let age :Int = 26
if 0...50 ~= age{
    print("범위에 들어감")
}

switch age {
case 0...29:
    print("20대")
default:
    break
}

for i in closedRange {
    for j in closedRange {
        print("\(i) * \(j) = \(i * j)")
    }
}

for i in 1...100 {
    if i % 3 == 0 {
        print("3의 배수 발견: \(i)")
    }
}

let smile = "😄"
var smilePrint = ""
for _ in 1...5 {
    smilePrint += smile
    print(smilePrint)
}

for i in 1...5 {
    for j in 1...5 {
        if i >= j {
            print("😍", terminator: "")
        }
    }
    print("")
}


func randomString (input:String) -> String {
    let a = Int.random(in: 0...Int(input.count))
    return String(input[input.index(input.startIndex, offsetBy: Int(a))])
}

randomString(input: "teststring")
//문자열 주고, 글자수 체크하고, 글자수 범위내에 숫자를 뽑아, 그 숫자에있는 글자를 뽑아

func sosu (input:Int){
    var count = 0
    for i in 1...input {
        if input > 1 && input % 1 == 0 && input % i == 0 {
            count += 1
        }
    }
    if count == 2 {
        print("소수입니다.")
    }else {
        print("소수가 아닙니다.")
    }
}
//sosu(input: 15)

func sosu2 (input:Int){
    var count = 0
    for i in 2..<input {
        if input % i == 0 {
            print("소수가 아닙니다.")
            return
        }
    }
    print("소수입니다.")
}
sosu2(input: 97)

func factorial(input:Int) -> Int {
    var multiply = 1
    for i in (1...input).reversed() {
        multiply *= i
    }
    return multiply
}
print(factorial(input: 10))

//재귀함수: 자기 자신을 반복해서 호출하는 함수

func factorialF(input:Int) -> Int {
    if input <= 1 {
        return 1
    }
    return input * factorialF(input: input - 1)
}
print(factorialF(input: 5))
