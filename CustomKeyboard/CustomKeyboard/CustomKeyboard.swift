//
//  CostomKeyboard.swift
//  CustomKeyboard
//
//  Created by 김경록 on 2023/02/14.
//

import UIKit


protocol CustomKeyboardDelegate {
    func keyboardTapped(str: String)
}


class CustomKeyboard: UIView {
   
    var delegate: CustomKeyboardDelegate?
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        delegate?.keyboardTapped(str:         (sender as AnyObject).titleLabel!.text!
)
        
      
        
        
        
    }
    
    
   
    
    
    
    
   
}
