//
//  ViewController.swift
//  Dicegame
//
//  Created by 김태완 on 2023/05/16.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var imageviewdice1: UIImageView!
    @IBOutlet weak var imageviewdice2: UIImageView!
    
    var dicearray = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageviewdice1.image = dicearray[1]
        imageviewdice2.image = dicearray[1]
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonpush(_ sender: UIButton) {
        imageviewdice1.image = dicearray.randomElement()
        imageviewdice2.image = dicearray.randomElement()
    }
    
    
    

}

