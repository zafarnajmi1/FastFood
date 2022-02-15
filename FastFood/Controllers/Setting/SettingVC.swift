//
//  SettingVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 01/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class SettingVC: BaseVC {

    @IBOutlet weak var btnnotification: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func notificationaction(_ sender: UIButton) {
        if btnnotification.isSelected == true {
            btnnotification.isSelected = false
            btnnotification.setImage(UIImage.init(named: "square"), for: .normal)
        } else {
            btnnotification.isSelected = true
            btnnotification.setImage(UIImage.init(named: "square-empty"), for: .normal)
        }
        
    }
    
    
    
    @IBAction func passwordAction(_ sender: UIButton) {
        
        let storyBorad = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBorad.instantiateViewController(withIdentifier: "ChangePasswordVC") as? ChangePasswordVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func languageAction(_ sender: UIButton) {
    }
    
    
}
