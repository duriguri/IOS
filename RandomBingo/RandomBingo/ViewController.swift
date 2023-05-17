//
//  ViewController.swift
//  RandomBingo
//
//  Created by 김태완 on 2023/05/17.
//

import UIKit

class ViewController: UIViewController {

    var computerRandom = Int.random(in: 1...10)
    var mySelect = ""
    
    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func pressedButton(_ sender: UIButton) {
        mySelect = sender.currentTitle!
        numberLabel.text = mySelect
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        computerRandom = Int.random(in: 1...10)
        //mainLable.text = "선택하세요"
        //numberLabel.text = ""
        viewDidLoad()
    }
    
    @IBAction func selectButton(_ sender: UIButton) {
        //guard let newstring = numberLabel.text else { return }
        //레이블에 들어있는 값 가져올수있음
        
        guard let mySelectNum = Int(mySelect) else { return }
        
        if computerRandom > mySelectNum {
            mainLable.text = "Up"
        }else if computerRandom < mySelectNum {
            mainLable.text = "Down"
        }else {
            mainLable.text = "Bingo😝"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLable.text = "선택하세요"
        numberLabel.text = ""
    }

    //0. 메인 레이블(첫번째)에 선택하세요 표시
    //0-1. 숫자레이블은 비워둠
    //0-2. 컴퓨터가 랜덤 숫자를 선택하게 해야됨
    //1. 버튼의 숫자를 가져옴
    //2. 숫자 레이블(두번째)이 숫자에 따라 변경
    //3. 선택한 숫자를 변수에다가 저장
    //4. 셀렉트 선택 컴퓨터에 숫자와 내가 선택한 숫자를 비교해서 업/다운/빙고 판단 후 표시
    //5. 메인레이블(첫) "선택하세요"
    //6. 컴퓨터 랜덤숫자 다시 선택
    //7. 숫자레이블을(두) 빈문자열로 세팅
    
    
    
    
    
    
}

