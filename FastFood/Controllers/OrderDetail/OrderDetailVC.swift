//
//  OrderDetailVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 01/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class OrderDetailVC: BaseVC {

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
          navigationButton_profile()
        self.tblView.register(UINib.init(nibName: "OrderDetailCell", bundle: nil), forCellReuseIdentifier: "OrderDetailCell")
        self.title  = "Order Detail"
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
extension OrderDetailVC :  UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderDetailCell") as? OrderDetailCell
        return cell!
    }
    
    
}
