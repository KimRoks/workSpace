//
//  ViewController.swift
//  OddEvenGame
//
//  Created by 김경록 on 2023/01/05.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var computerBallCountLabel: UILabel!
    
    @IBOutlet var userBallCountLabel: UILabel!
    
    var comBallsCount: Int = 20
    var userBallsCount: Int = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        computerBallCountLabel.text = String(comBallsCount)
        userBallCountLabel.text = String(userBallsCount)
    
        
    }
    
    @IBAction func gameStartPressed(_ sender: Any) {
        print("게임시작")
    }
    
    
    
    
    
}


