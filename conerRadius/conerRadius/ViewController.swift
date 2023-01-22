//
//  ViewController.swift
//  conerRadius
//
//  Created by 김경록 on 2023/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textfield.layer.cornerRadius = 20
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.gray.cgColor
    }


}

