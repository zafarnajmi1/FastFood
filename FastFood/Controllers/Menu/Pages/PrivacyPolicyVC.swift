//
//  PrivacyPolicyVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 02/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class PrivacyPolicyVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Privacy Policy"
        self.navigationButton_profile()
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

}
