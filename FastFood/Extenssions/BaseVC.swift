//
//  BaseVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 22/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      setNavegationButton()
      setNaviagtionBar()
      addBackBarButton()
    }
    
    func setNavegationButton(){
        self.navigationItem.setHidesBackButton(true, animated: true)
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
    

    func setNaviagtionBar() {
        
        let nav = self.navigationController?.navigationBar

          nav?.barStyle = UIBarStyle.black
          nav?.tintColor = UIColor.yellow
          nav?.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
         nav?.isTranslucent = false
        nav?.barStyle = .default
       // nav?.titleTextAttributes = [ NSAttributedString.Key.font: UIFont.systemFontSize , NSAttributedString.Key.foregroundColor: UIColor.black]
//         UINavigationBar.appearance().barStyle = .blackTranslucent
//               UINavigationBar.appearance().isTranslucent = false
//               UINavigationBar.appearance().tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//               UINavigationBar.appearance().barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//
//        UINavigationBar.appearance().titleTextAttributes = [ NSAttributedString.Key.font: UIFont.systemFontSize , NSAttributedString.Key.foregroundColor: UIColor.white]
        
    }
}
extension BaseVC {
    
    //MARK:- Back button
     func addBackBarButton()  {
        self.navigationItem.leftBarButtonItems = nil
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.setHidesBackButton(true, animated:false)
         
         //your custom view for back image with custom size
         let view = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
         let imageView = UIImageView(frame: CGRect(x: 0, y: 10, width: 20, height: 20))
         
        imageView.image = UIImage.init(named: "Back-arrow")
         
         view.addSubview(imageView)
         
         let backTap = UITapGestureRecognizer(target: self, action: #selector(backToMain))
         view.addGestureRecognizer(backTap)
         
         let leftBarButtonItem = UIBarButtonItem(customView: view )
         self.navigationItem.leftBarButtonItem = leftBarButtonItem
        
     }
     
     @objc func backToMain() {
        
         self.navigationController?.popViewController(animated: true)
     }
    
    
    
    
    
    
    
}
