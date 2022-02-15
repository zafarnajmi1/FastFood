//
//  ChangePasswordVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 23/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class ChangePasswordVC: BaseVC {

    @IBOutlet weak var btnSubmit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.btnSubmit.setsocailButtonView()
        
        self.title = "Change Password"
    }
    
    override func setNaviagtionBar() {
         self.navigationController?.navigationBar.isHidden = false
     }
    override func  setNavegationButton(){
         self.navigationItem.setHidesBackButton(false, animated: true)
     }
    

}
