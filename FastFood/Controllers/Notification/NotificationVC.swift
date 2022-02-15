//
//  NotificationVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 01/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class NotificationVC: BaseVC {

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Notifications"
        tblView.register(UINib.init(nibName: "NotificationCell", bundle: nil), forCellReuseIdentifier: "NotificationCell")
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

extension NotificationVC : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell") as? NotificationCell
        return cell!
    }
    
    
}
