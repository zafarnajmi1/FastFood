//
//  ContactUsVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 03/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit
import  DropDown
class ContactUsVC: BaseVC {
    @IBOutlet weak var btndorpdown: UIButton!
    
    @IBOutlet weak var txtfeed: UILabel!
    @IBOutlet weak var btnsend: UIButton!
    let dropDown = DropDown()
    override func viewDidLoad() {
        super.viewDidLoad()

        btnsend.setsocailButtonView()
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
    
    
    
    @IBAction func dropDownAction(_ sender: UIButton) {
        
        dropDown.anchorView = btndorpdown // UIView or UIBarButtonItem

        // The list of items to display. Can be changed dynamically
        dropDown.dataSource = ["Car", "Motorcycle", "Truck"]
        
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.txtfeed.text = item
          print("Selected item: \(item) at index: \(index)")
        }
        dropDown.show()
    }
    
    @IBAction func SendAction(_ sender: UIButton) {
    }
    
}
