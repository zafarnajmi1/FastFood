//
//  ProductDetailVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 26/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit
import GMStepper
class ProductDetailVC: UIViewController {
    @IBOutlet weak var btnaddtocart: UIButton!
    
    @IBOutlet weak var steper: GMStepper!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var btnplaceorder: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnplaceorder.setsocailButtonView()
        btnaddtocart.ButtonView(radius: 5, color: #colorLiteral(red: 0, green: 0.8117647059, blue: 0.7529411765, alpha: 1), border: 1)
        self.mainView.roundCorners(corners: [.topLeft, .topRight], radius: 20.0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    @IBAction func backaction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

    
    @IBAction func cartAction(_ sender: UIButton) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
               let vc =  storyBoard.instantiateViewController(withIdentifier: "OrderDetailVC") as? OrderDetailVC
               self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    
    
}
