//
//  ParentVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 01/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class ParentVC: BaseVC {
    @IBOutlet weak var firstChild: UIView!
    @IBOutlet weak var secondChild: UIView!
    @IBOutlet weak var segmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title  = "My History"
        segmentConfig()
        navigationButton_profile()
        
    }
    
    func segmentConfig(){
        self.segmented.layer.borderWidth = 1
         self.segmented.layer.borderColor = #colorLiteral(red: 0, green: 0.8117647059, blue: 0.7529411765, alpha: 1)
         self.segmented.setTitle("Upcoming " + "(5)", forSegmentAt: 0)
         self.segmented.setTitle("History " + "(13)", forSegmentAt: 1)
         
         segmented.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.init(cgColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))], for: .selected)
         segmented.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        // color of other options
        segmented.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.init(cgColor: #colorLiteral(red: 0, green: 0.8117647059, blue: 0.7529411765, alpha: 1))], for: .normal)
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
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex  == 0 {
            self.firstChild.alpha = 1
            self.secondChild.alpha = 0
        } else {
            self.firstChild.alpha = 0
            self.secondChild.alpha = 1
        }
    }
    
    

}
