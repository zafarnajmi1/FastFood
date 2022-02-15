//
//  FavoritVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 01/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class FavoritVC: BaseVC {

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        self.navigationButton_profile()
        super.viewDidLoad()
        self.title = "My Favorite"
     self.tblView.register(UINib.init(nibName: "FavoritCell", bundle: nil), forCellReuseIdentifier: "FavoritCell")
        
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
extension FavoritVC :  UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoritCell") as? FavoritCell
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: nil) { _, _, complete in
        
            self.tblView.deleteRows(at: [indexPath], with: .automatic)
            complete(true)
        }
        
        // here set your image and background color
       deleteAction.image = UIImage(named: "clear")
        deleteAction.title = "Delete"
       deleteAction.backgroundColor = #colorLiteral(red: 0, green: 0.8117647059, blue: 0.7529411765, alpha: 1)
        
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        configuration.performsFirstActionWithFullSwipe = true
        return configuration
    }
    
    
    }
