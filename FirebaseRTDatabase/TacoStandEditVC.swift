//
//  TacoStandEditVC.swift
//  FIrebaseBasic
//
//  Created by R on 10/30/16.
//  Copyright © 2016 R. All rights reserved.
//

import UIKit

class TacoStandEditVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var cityTF: UITextField!
    
    @IBOutlet weak var specTF: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == specTF {
            textField.resignFirstResponder()
        }
        
        return true
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "unwindFromAdd" {
            
            let destVC = segue.destination as? TacoStandTVC
            
            let newStand = TacoStand(name: nameTF.text!, city: cityTF.text!, specialty: specTF.text!)
            
            destVC?.addTacoStand(newStand: newStand)
        }
    }


}
