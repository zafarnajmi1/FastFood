//
//  ForgotPasswordVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 23/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class ForgotPasswordVC: BaseVC {

    @IBOutlet weak var btnrecover: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ForgotPassword"
        btnrecover.setsocailButtonView()
    }
    
    override func setNaviagtionBar() {
         self.navigationController?.navigationBar.isHidden = false
     }
    override func  setNavegationButton(){
         self.navigationItem.setHidesBackButton(false, animated: true)
     }

}
