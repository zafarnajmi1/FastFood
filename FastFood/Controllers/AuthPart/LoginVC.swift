//
//  LoginVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 22/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class LoginVC: BaseVC {

    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        btnLogin.setsocailButtonView()
        
        self.title  = "Login"
    }
    override func setNaviagtionBar() {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.layoutIfNeeded()
    }
   override func  setNavegationButton(){
        self.navigationItem.setHidesBackButton(false, animated: true)
    }
   
    @IBAction func forgotpasswordAction(_ sender: UIButton) {
        let storyBorad = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBorad.instantiateViewController(withIdentifier: "ChangePasswordVC") as? ChangePasswordVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    @IBAction func loginAction(_ sender: UIButton) {
        
        let storyBorad = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBorad.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        
        let storyBorad = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBorad.instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
