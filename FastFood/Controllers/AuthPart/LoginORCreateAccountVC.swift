//
//  LoginORCreateAccountVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 22/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class LoginORCreateAccountVC: BaseVC {

    @IBOutlet weak var btngoogle: UIButton!
    @IBOutlet weak var btnfb: UIButton!
    @IBOutlet weak var btngestuser: UIButton!
    @IBOutlet weak var btnsignup: UIButton!
    @IBOutlet weak var btnsignin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       setViewConfig()
    }
    

    func setViewConfig(){
        self.btnfb.setsocailButtonView()
        self.btngoogle.setsocailButtonView()
        self.btnsignin.setButtonView()
        self.btnsignup.setButtonView()
        self.btngestuser.setButtonView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         self.navigationController?.navigationBar.isHidden = true
    }
//    override func setNaviagtionBar() {
//        self.navigationController?.navigationBar.isHidden = true
//    }
    
    
    @IBAction func loginAction(_ sender: UIButton) {
        let storyBorad = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBorad.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func signupAction(_ sender: UIButton) {
        let storyBorad = UIStoryboard.init(name: "Main", bundle: nil)
               let vc =  storyBorad.instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC
               self.navigationController?.pushViewController(vc!, animated: true)
    }
}
