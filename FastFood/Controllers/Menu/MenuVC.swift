//
//  MenuVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 26/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit
import  AnimatableReload
class MenuVC: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    
    struct MenuModel {
        let name : String?
    }
    var menuArr = [MenuModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.menuConfig()
        self.tblView.register(UINib.init(nibName: "MenuCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
        
        AnimatableReload.reload(tableView: self.tblView, animationDirection: "up")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    func menuConfig() {
        self.menuArr.removeAll()
        self.menuArr.append(MenuModel(name: "Home"))
        self.menuArr.append(MenuModel(name: "FAVOURITE"))
        self.menuArr.append(MenuModel(name: "ORDER HISTORY"))
        self.menuArr.append(MenuModel(name: "ABOUT US"))
        self.menuArr.append(MenuModel(name: "CONTACT US"))
        self.menuArr.append(MenuModel(name: "TERMS & CONDITIONS"))
        self.menuArr.append(MenuModel(name: "PRIVACY POLICY"))
        self.menuArr.append(MenuModel(name: "FAQS"))
        self.menuArr.append(MenuModel(name: "SETTINGS"))
        self.menuArr.append(MenuModel(name: "LOG OUT"))
        
        
    }
    

    

}
extension MenuVC : UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "MenuCell") as? MenuCell
        cell!.menutitle.text = menuArr[indexPath.row].name
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        switch index {
        case 0:
            
         moveonHome()
            case 1:
               moveonFavorite()
           
            case 2:
               
              moveonOrderhistoy()
            case 3:
               
              moveonAboutus()
            case 4:
               
            moveonContactUs()
            case 5:
               //
            moveonTermConditions()
            case 6:
               
            moveonPrivacy()
            case 7:
              moveonProfile()
           
            case 8:
               
             
           moveonSetting()
            case 9:
                          
            moveonSetting()
            
        default:
            break
        }
    }
    func moveonContactUs(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "ContactUsVC") as? ContactUsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func moveonProfile(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "ProfileVC") as? ProfileVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func moveonHome(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func moveonOrderhistoy(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "ParentVC") as? ParentVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func moveonFavorite(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "FavoritVC") as? FavoritVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func moveonSetting(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "SettingVC") as? SettingVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func moveonAboutus(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "AboutUsVC") as? AboutUsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func moveonPrivacy(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "PrivacyPolicyVC") as? PrivacyPolicyVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func moveonTermConditions(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "termandConditionVC") as? termandConditionVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
