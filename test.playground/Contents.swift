import UIKit

var arr:[String] = ["a", "b", "c", "d"]

arr.isEmpty
arr.count
arr.contains("a")
arr.randomElement()

arr.firstIndex(of: "c")
arr.lastIndex(of: "d")

arr.insert("A", at: 1)
arr.insert(contentsOf: ["B","C","D"], at: 3)

arr.append("e")
arr.append(contentsOf: ["E","F"])

arr.remove(at: 2)
arr.removeSubrange(0...2)
arr.removeLast()
arr.removeLast(3)

arr.replaceSubrange(0...2, with: ["가,","나","다"])
print(arr)
arr[0...2] = ["A","B","C"]
print(arr)


var arr2:[Int] = [1,2,3,4,5,6,7]

for i in arr2.enumerated().reversed() {
    print(i.0, i.1)
}
arr2.reverse()




var dic = ["kim" :010110, "park" :1111, "lee" :2222]

if let a = dic["kim"] {
    print(a)
}



dic["kim"] = 99999
dic["cho"] = 6666
dic["cho"] = nil
dic
for (key, value) in dic {
    print(key, value)
}

for item in dic {
    print(item.key, item.value)
}

for item in dic {
    print(item.0, item.1)
}

for (_, value) in dic {
    print(value)
}

for (key, _) in dic {
    print(key)
}


enum Weekly {
    case s,
         m,
         t
}


var test:Weekly = Weekly.s

switch test {
case .s:
    print("일요일")
case .m:
    print("월요일")
default:
    print("화요일")
}

enum Dress: Int {
    case outer = 1,
         hat,
         color
}

enum Add: String {
    case inchoen = "guwol",
         seoul,
         busan
}


let a = Dress(rawValue: 1)
let b = Add(rawValue: "guwol")

let c = Add.inchoen.rawValue
let d = Dress.hat.rawValue

enum Computer{ //연관값과 원시값은 같이 사용할 수 없다.
    case cpu(core:Int, from:String), ram(Int, String), hardDisk(gb:Int)
}

let g = Computer.cpu(core: 8, from: "Intel")
let h = Computer.hardDisk(gb: 150)



if case Computer.hardDisk(gb: let gB) = h {
    print(gB)
}


