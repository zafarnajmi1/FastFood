//
//  EditProfileVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 29/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class EditProfileVC: BaseVC {

    @IBOutlet weak var btnsubmit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        btnsubmit.setsocailButtonView()
        navigationButton_profile()
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
