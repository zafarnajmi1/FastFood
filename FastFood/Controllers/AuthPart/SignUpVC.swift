//
//  SignUpVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 22/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class SignUpVC: BaseVC {

    @IBOutlet weak var btnsignup: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.btnsignup.setsocailButtonView()
        
        self.title = "Sign Up"
    }
    override func setNaviagtionBar() {
         self.navigationController?.navigationBar.isHidden = false
     }
    override func  setNavegationButton(){
         self.navigationItem.setHidesBackButton(false, animated: true)
     }

    @IBAction func loginAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
