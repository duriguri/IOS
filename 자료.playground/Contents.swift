import UIKit

//--for

for i /*반복상수*/ in 1...5 {
    print(i)
}

let closedRange = 1...9

for i in closedRange {
    print(i)
}

for _ in closedRange {
    print("안녕하세요")
}

let name = "Duri"

for _ in closedRange {
    print("name: \(name)")
}

for i in closedRange.reversed() {
    print(i)
}

for i in stride(from: 3, to: 16, by: 3) {
    print(i)
}

//--while

var num = 10

while num < 10 {
    print(num)
    num += 1
}

repeat {
    print(num)
}while num < 10


//--contiue
for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print(i)
}

//--break
var num2 = 0
while num2 < 10{
    print("안녕하세요")
    if num2 >= 5 {
        break
    }
    num2 += 1
}

for i in closedRange {
    for j in closedRange {
        print("\(i) * \(j) = \(i * j)")
        if j == 5 {
            continue
        }
    }
}

//--Labeled Statements
OUTER:for i in closedRange {
    INNER:for j in closedRange {
        print("\(i) * \(j) = \(i * j)")
        if j == 5 {
            continue OUTER
        }
    }
}

//for문은 반복횟수가 정해져있을때 사용
//while은 반복횟수가 정해지지않고, 조건을 판별하여 조건에 맞게 반복
//continue, break: 가장 인접한 반복문에 주기를 다음주기로 넘기거나 종료시킨다.


