//
//  EmailVerificationVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 23/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class EmailVerificationVC: BaseVC {
    @IBOutlet weak var btnsubmit: UIButton!
    
    @IBOutlet weak var txtthird: UITextField!
    @IBOutlet weak var txtfourth: UITextField!
    @IBOutlet weak var txtscnd: UITextField!
    @IBOutlet weak var txtcode: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtcode.delegate = self
        txtscnd.delegate = self
        txtthird.delegate =  self
        txtfourth.delegate =  self
        self.title = "Email Verification"
        
        
//        txtcode.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
//               txtscnd.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
//               txtthird.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
//               txtfourth.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)

    }
    
    
    
    @objc func textFieldDidChange(textField: UITextField){
           let text = textField.text

           if (text?.utf16.count)! >= 1{
               switch textField{
               case txtcode:
                   txtscnd.becomeFirstResponder()
               case txtscnd:
                   txtthird.becomeFirstResponder()
               case txtthird:
                   txtfourth.becomeFirstResponder()
               case txtfourth:
                   txtfourth.resignFirstResponder()
               default:
                   break
               }
           }else{

           }
       }
    
    override func setNaviagtionBar() {
         self.navigationController?.navigationBar.isHidden = false
     }
    override func  setNavegationButton(){
         self.navigationItem.setHidesBackButton(false, animated: true)
     }
    

}
extension EmailVerificationVC: UITextFieldDelegate {
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        textField.text = ""
//    }
    

    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        if let text = textField.text {

            // 10. when the user enters something in the first textField it will automatically adjust to the next textField and in the process do some disabling and enabling. This will proceed until the last textField
            if (text.count < 1) && (string.count > 0) {

                if textField == txtcode {
                    //txtcode.isEnabled = false
                    txtscnd.isEnabled = true
                    txtscnd.becomeFirstResponder()
                }

                if textField == txtscnd {
                    //txtscnd.isEnabled = false
                    txtthird.isEnabled = true
                    txtthird.becomeFirstResponder()
                }

                if textField == txtthird {
                    //txtthird.isEnabled = false
                    txtfourth.isEnabled = true
                    txtfourth.becomeFirstResponder()
                }

                if textField == txtfourth {
                    // do nothing or better yet do something now that you have all four digits for the sms code. Once the user lands on this textField then the sms code is complete
                }

                textField.text = string
                return false

            } // 11. if the user gets to the last textField and presses the back button everything above will get reversed
            else if (text.count >= 1) && (string.count == 0) {

                if textField == txtscnd {
                    //txtscnd.isEnabled = false
                    txtcode.isEnabled = true
                    txtcode.becomeFirstResponder()
                    txtcode.text = ""
                }

                if textField == txtthird {
                    //txtthird.isEnabled = false
                    txtscnd.isEnabled = true
                    txtscnd.becomeFirstResponder()
                    txtscnd.text = ""
                }

                if textField == txtfourth {
                   // txtfourth.isEnabled = false
                    txtthird.isEnabled = true
                    txtthird.becomeFirstResponder()
                    txtthird.text = ""
                }

                if textField == txtcode {
                    // do nothing
                }

                textField.text = ""
                return false

            } // 12. after pressing the backButton and moving forward again you will have to do what's in step 10 all over again
            else if text.count >= 1 {

                if textField == txtcode {
                    //txtcode.isEnabled = false
                    txtscnd.isEnabled = true
                    txtscnd.becomeFirstResponder()
                }

                if textField == txtscnd {
                    //txtscnd.isEnabled = false
                    txtthird.isEnabled = true
                    txtthird.becomeFirstResponder()
                }

                if textField == txtthird {
                    //txtthird.isEnabled = false
                    txtfourth.isEnabled = true
                    txtfourth.becomeFirstResponder()
                }

                if textField == txtfourth {
                    // do nothing or better yet do something now that you have all four digits for the sms code. Once the user lands on this textField then the sms code is complete
                }

                textField.text = string
                return false
            }
        }
        return true
    }

    
}
