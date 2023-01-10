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
    
    @IBOutlet var resultLabel: UILabel!
    var comBallsCount: Int = 20
    var userBallsCount: Int = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        computerBallCountLabel.text = String(comBallsCount)
        userBallCountLabel.text = String(userBallsCount)
    
        
    }
    
    @IBAction func gameStartPressed(_ sender: Any) {
        print("게임시작")
        let alert = UIAlertController.init(title: "Game Start", message: "홀 짝을 선택해주세요", preferredStyle: .alert)
        let oddButton = UIAlertAction(title: "홀", style: .default) { _ in
            print("홀 버튼을 클릭했습니다")
            guard let input = alert.textFields?.first?.text else{
                return
            }
            print("입력한 값은 \(input) 입니다")
            guard let value = Int(input) else {
                return
            }
            self.getWinner(count: value, select: "홀")
        }
        
        
        let evenButton = UIAlertAction(title: "짝", style: .default) { _ in
            print("짝 버튼을 클릭했습니다")
            guard let input = alert.textFields?.first?.text else{
                return
            }
            print("입력된 값은 \(input) 입니다")
            guard let value = Int(input) else{
                return
            }
            self.getWinner(count: value, select: "짝")
        }
        
        
        
        
        alert.addTextField{ textField in
            textField.placeholder = "베팅할 구슬의 개수를 입력해주세요"
        }
        alert.addAction(oddButton)
        alert.addAction(evenButton)
        self.present(alert, animated: true) {
            print("화면이 띄워짐")
        }
    }
    
    //랜덤 수 생성
    func getRandom() -> Int {
        return Int(arc4random_uniform(10)) + 1
        }
    
    
    //승패 비교
    func getWinner(count: Int, select: String) {
         let com = self.getRandom()
        let comType = com % 2 == 0 ? "짝" : "홀"
        var result = comType
        if comType == select {
            print("User Win")
            result = result + "(User Win)"
            self.calculateBalls(winner: "user", count: count)
            
        }else {
            result = result + "(Com Win )"
            print("Computer Win")
            self.calculateBalls(winner: "com", count: count)
        }
        
        self.resultLabel.text = result
    }
    
    func calculateBalls(winner: String, count: Int) {
        if winner == "com" {
            self.userBallsCount = self.userBallsCount - count
            self.comBallsCount = self.comBallsCount + count
            
            
        }else {
            self.comBallsCount = self.comBallsCount - count
            self.userBallsCount = self.userBallsCount + count
        }
        self.userBallCountLabel.text = "\(self.userBallsCount)"
        self.computerBallCountLabel.text = "\(self.comBallsCount)"
        
        
        
    }
    
    
    
    
}


