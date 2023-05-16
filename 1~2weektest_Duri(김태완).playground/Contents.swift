import UIKit


/*:
# 앨런 - Swift 마스터 스쿨 21기
*/
/*:
## 첫번째 테스트 (2주차)
---
*/
/**>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 그동안 배운 내용의 복습 및 약간의 응용이 들어가 있을 뿐입니다. 이 문제를 잘 풀 수 있다고
 좋은 개발자가 될 수 있는 것도 아니고, 실망하거나 좌절할 필요도 없습니다.
 우린 이제 시작일 뿐입니다. 😄
 가장 중요한 것은 포기하지 않고, 꾸준함을 유지하는 것일뿐!
 안풀리면, 다음 문제로 넘어가면되고, 이번에 못풀면 잘 공부해서, 다음 번에 똑같은 문제를 잘 풀면됩니다.
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>**/

// 서술형의 경우, 주석처리를 하고 작성하면 됩니다.
// (시간이 약간 모자랄 수도 있을 것 같긴한데, 되는 대로 풀어서, 슬랙 DM으로 전달해 주세요!)


/**==================================================================
 [1번 문제]
  - 하나의 앱이 실행되면, 메모리는 어떤 4가지 영역으로 나누어 지나요? 4가지 영역의 이름을 쓰세요.
 ===================================================================**/

/*코드, 데이터, 힙, 스택*/




/**==================================================================
 [2번 문제]
  - 프로그래밍에서, 표현식(Expression)이 어떤 의미인가요? 아는대로 작성하세요.
 ===================================================================**/


/*표현식은 값을 수식을 말하는 것으로, 결과값을 항상 가진다.*/




/**==================================================================
 [3번 문제]
  -  반복문을 사용해서, 1부터 10까지 값을 더한 결과값을 출력하는 코드를 작성해 보세요.
    (힌트: 변수를 하나 만들고, 해당 변수를 이용 어떤 반복문을 어떻게 사용할지 고민해 보세요.)
 ===================================================================**/

var a = 0
for i in 1...10 {
    a += i
}
print(a)


/**==================================================================
 [4번 문제]
  -  튜플이 뭔가요? 간단한 개념을 1-2줄로 서술 하고, 간단한 코드 예시를 하나 만들어 보세요.
 ===================================================================**/

/*튜플이란 값을 여러개? 설정할 수 있는 것으로 한 변수에 여러개에 값이 필요할때 사용한다*/


let privacy = (name: "홍길동",age: 26,address: "서울")
print("\(privacy.name)님에 나이는 \(privacy.age)이고, 사는곳은 \(privacy.address)입니다.")




/**==================================================================
 [5번 문제]
  -  구구단을 2단부터, 9단까지 출력하는 코드를 반복문을 사용해서 만들어 보세요.
    (힌트: 어떤게 반복이 되어야 할까요? 구구단에서 반복이 되는 부분이 어디죠?)
 ===================================================================**/

var multiply = 0
for i in 2...9 {
    for j in 1...9 {
        print("\(i) * \(j) = \(i * j)")
    }
}

/**==================================================================
 [6번 문제]
  - 함수만들어 보기: 여러개의 정해지지 않은 갯수의 정수를 받아서, 평균을 구하는 함수를 작성해 보세요.
    (힌트: 함수의 이름은 누구봐도 알아볼 수 있게, 평균..이란 말이 들어가면 좋겠네요!)
 ===================================================================**/

func average(num1:[Int]) {
    var result = 0
    for i in num1 {
        result += i
    }
    print(result / num1.count)
}

average(num1: [1,2,3,4,5,6,7])

/**==================================================================
 [7번 문제]
 - 함수만들어 보기: 2개의 정수를 입력 받아, 그 숫자들을 더한 결과값을 문자열로 반환하는
   함수를 작성해 보세요.
   (힌트: 문자열로 반환하려면, 함수 안에서 변환의 과정이 한번 필요하겠네요.)
 ===================================================================**/


func twoNumber(num1:Int, num2:Int) -> String {
    return String(num1 + num2)
}
twoNumber(num1: 1, num2: 2)


/**==================================================================
 [8번 문제]
  - 함수의 파라미터에서 사용하는 inout키워드에 대해서, 간단하게 설명해 보세요.
 ===================================================================**/


/*모르겠어요...*/




/**==================================================================
 [9번 문제]
  -  다음의 제어전송문 4가지를 각각 쓰이는 경우와 어떻게 사용되는지 간단하게 설명하세요.
    (break / fallthrough / continue / return)
    (힌트1: break는 2가지 경우에 쓰입니다.)
    (힌트2: return은 리턴타입이 있는 함수/리턴타입이 없는 함수 구분해서, 설명해 주세요.)
 ===================================================================**/

// 1.break문
/*반복문을 종료시킨다.
 */

// 2.fallthrough문
/*switch문은 맞는 조건이 나오면 반복문이 종료되는데, 이것을 사용하면 다음 조건을 한번 더 확인한다.*/


// 3.continue문
/*가장 가까운 반복문에 처음으로 돌아간다.*/


// 4.return문
/*
 리턴타입이 있는 함수: 타입에 맞춰서 결과값을 반환하고 함수를 종료시킨다.
 리턴타입이 없는 함수: ???*/

/**==================================================================
 [10번 문제]
  - nil이 뭘까요? 아는대로 설명해 보세요!
 ===================================================================**/

/*다른언어에 null과 같은 의미로 사용되지만 nil은 실제 값이 없는게 아니라 값이 없음을 표현한것이다.*/





/**==================================================================
 [11번 문제]
  - Optional 타입에는 .none이 있는데, 이것과 nil의 공통점 또는 차이점은?
 ===================================================================**/

/*
 공통점: 값이 없다는 것을 표현
 차이점: .none은 정말 값이 없는것
 */




/**==================================================================
 [12번 문제]
  - Optional을 언래핑(Unrapping) 하는 4가지 방법은? 간단하게 서술로 쓰시면 됩니다.
 ===================================================================**/

// 1번 방법
/*강제로 벗기기 unrapping! 값이 없으면 오류발생*/


// 2번 방법
/*if-let 값을 한번 확인 후 벗기기 if let a = unraaping*/


// 3번 방법
//


// 4번 방법
//




/**==================================================================
 [13번 문제]
  - 열거형(Enum)은 어떤 경우에 사용하는 타입인가요? 아는대로 간단하게 서술해 보세요.
 ===================================================================**/

/*특정한 값을 그룹으로 묶어서 사용 유지보수와 관리가 편하다*/






/**==================================================================
 [14번 문제]
 구글(google), 페이스북(facebook), 네이버(naver) 로그인을 위해 SiteLogin라는 이름을 가진
 아래의 Enum 타입을 완성해 보세요.
 
 각 case는 사용자의 아이디(String)와 비밀번호(String)를 위한 연관 값(associated value)을  가집니다.
 
 (만들고자 하는 타입 예시)
 enum SiteLogin { }
 
 (변수에 담았을때의 모습)
 var login1 = SiteLogin.google("google@gmail.com", "0000")
 
  (힌트: 연관값이라는 개념을 어떻게 사용해야 하죠?)
 ===================================================================**/

// 아래의 enum타입 완성

enum SiteLogin {
    case google(id:String, pass:String)
}

var login1 = SiteLogin.google(id:"google@gmail.com", pass:"0000")



/**>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 수고 하셨습니다. 😄
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>**/
