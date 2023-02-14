//
//  ViewController.swift
//  CustomKeyboard
//
//  Created by 김경록 on 2023/02/14.
//

import UIKit

class ViewController: UIViewController, CustomKeyboardDelegate {

    
    
    
    @IBOutlet weak var firstTextFieled: UITextField!
    
    
    
    @IBOutlet weak var secondTextFieled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil)
        let myKeyboardView = loadNib?.first as! CustomKeyboard
        myKeyboardView.delegate = self
        firstTextFieled.inputView = myKeyboardView
        
        
    }
    func keyboardTapped(str: String) {
        print(str)
        firstTextFieled.text = str
    }

}

