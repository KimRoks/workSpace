//
//  ViewController.swift
//  Calc_StackView
//
//  Created by 김경록 on 2023/02/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        resultLabel.layer.cornerRadius = 40
        resultLabel.layer.masksToBounds = true
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        btn1.layer.cornerRadius = btn1.bounds.width / 2
    }

}

