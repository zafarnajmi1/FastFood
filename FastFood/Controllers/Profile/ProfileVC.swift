//
//  ProfileVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 29/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class ProfileVC: BaseVC {

    @IBOutlet weak var btnedit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        btnedit.setsocailButtonView()
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
    
    
    @IBAction func editAction(_ sender: UIButton) {
    let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
           let vc =  storyBoard.instantiateViewController(withIdentifier: "EditProfileVC") as? EditProfileVC
           self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
