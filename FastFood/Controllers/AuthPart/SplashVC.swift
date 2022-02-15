//
//  ViewController.swift
//  FastFood
//
//  Created by Zafar Najmi on 16/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
         self.navigationController?.navigationBar.isHidden = true
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                   self.moveOnQr()
               })
    }
    func moveOnQr(){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyboard.instantiateViewController(withIdentifier: "LoginORCreateAccountVC") as? LoginORCreateAccountVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }

}

