import UIKit

/*
// --- Tuple

let coordinates = (4,6)

let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x:2, y:3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let (x3, y3) = coordinatesNamed
x3
y3

// --- Boolean

let yes = true
let no = false

let number  = 4>5

if number {
    print ("참")
} else {
    print ("거짓")
}


let name1 = "Jin"
let name2 = "Jason"

let isTwoNameSame = name1 == name2

if isTwoNameSame{
    print ("이름이 같다")
}else {
    print("이름이 다르다")
}


let isJason = name2 == "Jasong"
let isMale = true

let jasonAndMale = isJason && isMale
let jasonOrMale = isJason || isMale

let message : String
if isJason {
    message = "hello"
} else {
    message = "bye"
}
print("Msg: \(message)")

let message2 :String = isJason ? "hello" : "bye"
print("Msg: \(message)")


// --- Scope

var hour = 50
let payPerHour = 10000
var salary = 0

if hour > 40 {
    let extrahour = hour - 40
    salary += extrahour * payPerHour * 2
    hour -= extrahour
}

salary += hour * payPerHour


// --- While

print("While")
var i = 10
while i < 10 {
    print(i)
    if i == 5 {
        break
    }
    i += 1
}

print("Repaet")
i = 10
repeat{
    print(i)
    i += 1
}while  i < 10


// --- For Loop

let ClosedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0
for i in halfClosedRange{
    print("--->\(i)")
    sum += i
}
print("total--->\(sum)")

let name = "Jason"

for _ in ClosedRange {
    print("name:\(name)")
}

for i in ClosedRange{
    if i % 2 == 0 {
        print(i)
    }
}

for i in ClosedRange where i % 2 == 0 {
    print("짝수: \(i)")
}

for i in ClosedRange{
    if i == 3 {
        continue
    }
    print(i)
}

for i in ClosedRange {
    for j in ClosedRange {
        print("구구단: \(i) * \(j) = \(i * j)")
    }
}

// ---switch

let num = 10

switch num {
case 0...10:
    print("0 10 사이입니다.")
case 10:
    print("10")
default:
    print("나머지")
}

let pet = "bird"

switch pet {
case "dog", "cat", "bird":
    print("집동물")
default:
    print("나머지")
}

let num2 = 5

switch num2 {
case _ where num2 % 2 == 0:
    print("짝수")
default:
    print("홀수")
}


let coordinate = (x:10, y:10)

switch coordinate {
case (0,0):
    print("기준점")
case (0,_):
    print("y축")
case (let x, let y) where x == y:
    print("x랑 y랑 같음 \(x) = \(y)")
default:
    print("어딘가")
}

// --- func

func printName() {
    print("name")
}
printName()

//param 1개
//숫자를 받아서 10을 곱해서 출력
func Num(a: Int) {
    print(a * 10)
}
Num(a:10)

//param 2개
//물건값과 갯수를 받아서 전체 금액 출력
func money(a:Int, b:Int) {
    print("가격은 \(a * b)이다 ")
}
money(a: 5000, b: 3)

func money2(_ a:Int, 갯수 b:Int) {
    print("가격은 \(a * b)이다 ")
}
money2(5000, 갯수:3)

func totalprice(price:Int, count:Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let cal = totalprice(price: 10000, count: 77)

func Name(firstName:String, lastName:String) {
    print("이름은\(firstName + lastName)")
}
Name(firstName: "김", lastName: "태완")

func Name2(_ firstName:String, _ lastName:String) {
    print("이름은\(firstName + lastName)")
}
Name2("김","태완")

func Name3(firstName:String, lastName:String) -> String {
    return firstName + lastName
}
let fullName = Name3(firstName: "김", lastName: "태완")

// --In-Out paramter

var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&value)

// --함수를 파라미터로 넘기는 법
func add (_ a:Int, _ b:Int) -> Int {
    return a + b
}
func subtract(_ a:Int, _ b:Int) -> Int {
    return a - b
}

var function = add
function(4,2)
function = subtract
function(4,2)

func printResult (_ function: (Int, Int) -> Int, _ a:Int, _ b:Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5)


// --optinal

var actor:String? = "한소희"
let num5566 = Int("10")

// Forced unwrapping >> 억지로 박스르 까보기
print(actor!)
// Optional binding (if let) >> 부드럽게 박스를 까보자 1
if let unwrappedactorName = actor {
    print(unwrappedactorName)
} else {
    print("없음")
}
func password(from:String) {
    if let printpassword = Int(from) {
        print(printpassword)
    } else {
        print("값이사함")
    }
}
password(from: "100")
// Optional binding (guard) >> 부드럽게 박스를 까보자 2
func password2(from:String) {
    guard let printpassword = Int(from) else {
        print("값없음")
        return
    }
    print(printpassword)
}
password2(from: "200")
// Nil coalescing >> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자
actor = nil
let actor2:String = actor ?? "김태희"

//test
var Favoritfood:String? = nil

if let food3 = Favoritfood {
    print(food3)
} else {
    print("값없음")
}

func foodCheck(food:String?) {
    guard let foodcheck = food else {
        print("좋아하는 음식이 없다")
        return
    }
    print(foodcheck)
}
foodCheck(food: "치킨")

// --collection
var evenNumbers:[Int] = [2,4,6,8]

evenNumbers.append(10)
evenNumbers += [12,14,16]
evenNumbers.append(contentsOf: [18,20])
evenNumbers.count
evenNumbers.first
evenNumbers.last
evenNumbers.min()
evenNumbers.max()
let isEmpty = evenNumbers.isEmpty

evenNumbers[0...2]
evenNumbers.contains(4)

evenNumbers.insert(0, at: 0)
//evenNumbers.removeAll()
evenNumbers.remove(at: 0)
evenNumbers[0] = -2
evenNumbers[0...2] = [-2,0,2]
evenNumbers.swapAt(0, 9)
 
for num in evenNumbers {
    print(num)
}

for (index, num) in evenNumbers.enumerated() {
    print("idx: \(index), value\(num)")
}

evenNumbers.dropFirst(3)
evenNumbers.dropLast(3)
evenNumbers
evenNumbers.prefix(3)
evenNumbers.suffix(3)

// --- Dictionary

var scoreDic:[String:Int] = ["Jason":90, "Jay":95,"Jake":90]

if let score = scoreDic["Jason"] {
    score
} else {
    //..score없음
}

//scoreDic = [:]
scoreDic.isEmpty
scoreDic.count

//사용자 업데이트
scoreDic["Jason"] = 99
//사용자 추가
scoreDic["Jack"] = 100
//사용자 제거
scoreDic["Jack"] = nil

for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}


var favorit:[String:String] = ["name":"Kim","Jop":"ios","city":"Incheon"]

favorit["city"] = "Busan"
favorit

func dic (dicsub:[String:String]) {
    if let city = dicsub["city"], let name = dicsub["name"]  {
        print("name:\(name), city:\(city)")
    }else {
        print("값없음")
    }
}

dic(dicsub: favorit)

// -- set

var someSet: Set<Int> = [1,2,3,1,2]
//someSet = []
someSet.isEmpty
someSet.count
someSet.contains(1)
someSet.insert(5)
someSet.remove(1)

// -- closure
/*
{(param) -> return type in
    statement
    ....
}
*/
var multiplyclosure:(Int,Int) -> Int = {a,b in
    return a * b
}
let result = multiplyclosure(4,2)

func operateTwoNum (a:Int, b:Int, operation:(Int,Int) -> Int) -> Int {
    let result = operation(a,b)
    return result
}

//operateTwoNum(a: 4, b: 2, operation: addclosure)

var addclosure:(Int,Int)->Int = { a, b in
    return a + b
}

// 1. 간단한 closur

let simpleclosure = {
    
}

// 2. 코드블록을 구현한 closure

let simpleclosure2 = {
    print("closure2")
}
simpleclosure2

// 3. 인풋 파라미터를 받는 closure

let simpleclosure3:(String) -> () = { name in
    print(name)
}
simpleclosure3("Kim")

// 4. 값을 리턴하는 closure

let simpleclosure4:(String) -> String = { name in
    let message = "ios \(name)"
    return message
}
let result4 = simpleclosure4("Kim")
print(result4)

// 5. closure를 파라미터로 받는 함수 구현

func somesimplefunction(simpleclosure5: () -> ()) {
    print("함수에서 호출됨")
    simpleclosure5()
}

somesimplefunction(simpleclosure5: {
    print("funcclosure")
})

// 6. Trailing closure
func somesimplefunction2(message:String, simpleclosure6:() -> ()) {
    print("함수에서 호출됨:\(message)")
    simpleclosure6()
}

somesimplefunction2(message: "Kim", simpleclosure6: {
    print("Tae")
})

somesimplefunction2(message: "Kim") {
    print("Tae")
}

// -- struct

struct Location {
    let x: Int
    let y: Int
}

struct Store {
    let loc:Location
    let name:String
    
}

//주어진 편의점 정보
let store1 = Store(loc:Location(x: 3, y: 5), name: "gs")
let store2 = Store(loc:Location(x: 4, y: 6), name: "seven")
let store3 = Store(loc:Location(x: 1, y: 7), name: "cu")


// 거리 구하는 함수
func distance(current: Location, target: Location) -> Double {
    // 피타고라스..
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}


// 가장 가까운 편의점 프린트하는 함수
func printClosestStore(currentLocation:Location, stores:[Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity

    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
        }
    }
    print("Closest store: \(closestStoreName)")
}

// Stores Array 세팅, 현재 내 위치 세팅
let mylocation = Location(x:2, y:2)
let stores = [store1, store2, store3]

printClosestStore(currentLocation: mylocation, stores: stores)

//printClosestStore 함수이용해서 현재 가장 가까운 스토어 출력하기

// --CustomStringConvertible

struct Lecture:CustomStringConvertible {
    var description: String {
        return "Title\(name), Instructor\(instructor)"
    }
    let name:String
    let instructor:String
    let numOfStudent:Int
}

func printLectureName (Instructor:String, lectors:[Lecture]) {
    var name = ""
    for lector in lectors {
        if Instructor == lector.instructor {
            name = lector.name
        }
    }
    print("이 강사의 강의는 \(name)")
    
}
let lec = Lecture(name: "Ios", instructor: "Kim", numOfStudent: 10)
let lec2 = Lecture(name: "java", instructor: "Park", numOfStudent: 10)
let lec3 = Lecture(name: "rpa", instructor: "Lee", numOfStudent: 10)
let lecs = [lec, lec2, lec3]

printLectureName(Instructor:"Kim", lectors: lecs)

struct Person {
    var firstName: String {
        willSet {
            print("willSet: \(firstName) --> \(newValue)")
        }
        
        didSet {
            print("didset: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true
        }else {
            return false
        }
    }()
    
    var fullName:String {
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            //newValue "Jay Park"
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
            
        }
    }
}

var person = Person(firstName: "Jason", lastName: "Lee")

person.firstName
person.lastName

person.firstName = "Jim"
person.lastName = "Kim"

person.fullName = "Jay Park"
person.firstName
person.lastName

person.isPopular



struct Lecture2 {
    var title:String
    var maxStudent: Int = 10
    var numOfRegistered: Int = 0
    
    func remainSeats() -> Int {
        let remainSeats = maxStudent - numOfRegistered
        return remainSeats
    }
    
    mutating func register() {
        //학생수 증가 시키기
        numOfRegistered += 1
    }
    
    static let target: String = "Any"
    static func 소속학원이름() -> String{
        return "패캠"
        
    }
}


var leccc = Lecture2(title: "iOS Basic")

//func remainSeats(of leccc:Lecture2) -> Int {
//    let remainSeats = leccc.maxStudent - leccc.numOfRegistered
//    return remainSeats
//}
//
//remainSeats(of: leccc)

leccc.remainSeats()

leccc.register()
leccc.remainSeats()

Lecture2.소속학원이름()


struct Math {
    static func abs(value:Int) -> Int {
        if value > 0 {
            return value
        }else {
            return -value
        }
    }
}

Math.abs(value: -20)

extension Math {
    static func sqaure(value:Int) -> Int {
        return value * value
    }
    static func half(value:Int) -> Int {
        return value/2
    }
    
}


Math.half(value: 10)
Math.sqaure(value: 5)
 
// -- Class

struct PersonStruct {
    var firstName:String
    var lastName:String
    
    var fullName:String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }

}

class PersonClass {
    var firstName:String
    var lastName:String
    
    init(firstName:String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName:String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Jason", lastName: "Lee")
var personClass2 = personClass1

personStruct2.firstName = "Jay"
personStruct1.firstName
personStruct2.firstName

personClass2.firstName = "Jay"
personClass1.firstName
personClass2.firstName


personClass2 = PersonClass(firstName: "Bob", lastName: "Lee")
personClass1.firstName
personClass2.firstName

// struct, class를 사용하는 경우
/*
struct
 1. 두 object를 비교해야 하는 경우
 2. copy 된 각 개체들이 독립적인 값을 가져야되는 경우
 3. 코드에서 오브젝트의 데이트를 여러 스레드 걸쳐 사용할 경우
 
class
 1. 두 object의 인스턴스 자체가 같음을 학인해야 할때
 2. 하나의 객체가 필요하고, 여러 대상에 의해 접근되고 변경이 필요한 경우
 
 
 */

// 처음 주어진 코드
//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//class Person {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
//
//class Student {
//    var grades: [Grade] = []
//
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
*/

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person{
    var grades: [Grade] = []
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jasson", lastName: "Lee")

jay.firstName
jason.firstName

jay.printMyName()

let math = Grade(letter: "B", points: 8.7, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)
jason.grades.append(math)
jason.grades.append(history)
jason.grades.count

class StudentAthelete: Student {
    var minimumTrainigTime: Int = 2
    var trainedTime: Int = 0
    
    func train() {
        trainedTime += 1
    }
}

class FootballPlayer: StudentAthelete {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

var athelete1 = StudentAthelete(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")

athelete1.firstName
athelete2.firstName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainigTime
athelete2.minimumTrainigTime

athelete2.footballTeam

athelete1.train()
athelete1.trainedTime

athelete2.train()
athelete2.trainedTime

athelete1 = athelete2 as StudentAthelete

if let son = athelete1 as? FootballPlayer {
    print("team: \(son.footballTeam)")
}
/* 상속하면 좋은 경우
 1. 단일책임: 하나에 역할만 해야됨
 2. 타입이 분명해야 할때
*/






