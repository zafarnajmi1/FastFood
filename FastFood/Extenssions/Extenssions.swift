//
//  Extenssions.swift
//  FastFood
//
//  Created by Zafar Najmi on 22/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func setButtonView(){
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 0.6144063473, green: 0.6544161439, blue: 0.6919296384, alpha: 1)
        
    }
    
    func setsocailButtonView(){
        self.layer.cornerRadius = 5
        
        
    }
    
    
    func ButtonView(radius : Int = 0, color: UIColor = .black, border: Int = 0){
        self.layer.cornerRadius = CGFloat(radius)
        self.layer.borderWidth = CGFloat(border)
        self.layer.borderColor = #colorLiteral(red: 0, green: 0.8117647059, blue: 0.7529411765, alpha: 1)
        
    }
    
}
extension UIView {
    func setSearchView(scale: Bool = true) {
        
//              layer.masksToBounds = false
//              layer.cornerRadius = 2
//              layer.shadowColor = UIColor.black.cgColor
//              layer.shadowOpacity = 0.2
//              layer.shadowOffset = .zero
//              layer.shadowRadius = 1
//              layer.shouldRasterize = true
//              layer.rasterizationScale = scale ? UIScreen.main.scale : 1
          self.layer.cornerRadius = 2
          self.layer.masksToBounds = false
          self.layer.shadowRadius = 2
          self.layer.shadowOpacity = 1
          self.layer.shadowOffset = CGSize( width: 2, height: 2)
          self.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) //UIColor(red: 223/255, green: 228/255, blue: 238/255, alpha: 1.0).cgColor
          
          let shadowLayer = CAShapeLayer()
          shadowLayer.frame = bounds
          shadowLayer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)//themeColor.cgColor
          shadowLayer.shadowColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)//UIColor.white.cgColor
          shadowLayer.cornerRadius = 2
          shadowLayer.shadowOffset = CGSize(width: 0, height: 0)
          shadowLayer.shadowOpacity = 1
          shadowLayer.shadowRadius = 2
          self.layer.insertSublayer(shadowLayer, at: 0)
        
    }
    
    func round(corners: UIRectCorner, cornerRadius: Double) {
        
        let size = CGSize(width: cornerRadius, height: cornerRadius)
        let bezierPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = self.bounds
        shapeLayer.path = bezierPath.cgPath
        self.layer.mask = shapeLayer
    }
    
    
    func setCardView(){
        
                  self.layer.cornerRadius = 2
                   self.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
                   self.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
                   self.layer.shadowRadius = 8
                   self.layer.shadowOpacity = 1
    }
    
    public func addSoftUIEffectForView(cornerRadius: CGFloat = 8.0, themeColor: UIColor = UIColor(red: 241/255, green: 243/255, blue: 246/255, alpha: 1.0)) {
//        self.layer.cornerRadius = cornerRadius
//        self.layer.masksToBounds = false
//        self.layer.shadowRadius = 1
//        self.layer.shadowOpacity = 1
//        self.layer.shadowOffset = CGSize( width: 2, height: 2)
//        self.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) //UIColor(red: 223/255, green: 228/255, blue: 238/255, alpha: 1.0).cgColor
//
//        let shadowLayer = CAShapeLayer()
//        shadowLayer.frame = bounds
//        shadowLayer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)//themeColor.cgColor
//        shadowLayer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)//UIColor.white.cgColor
//        shadowLayer.cornerRadius = cornerRadius
//        shadowLayer.shadowOffset = CGSize(width: -2.0, height: -2.0)
//        shadowLayer.shadowOpacity = 1
//        shadowLayer.shadowRadius = 1
//        self.layer.insertSublayer(shadowLayer, at: 0)
        
//        let cornerRadius: CGFloat = 0
//        let shadowOffsetWidth: Int = 0
//        let shadowOffsetHeight: Int = 1
//
//        let shadowColor: UIColor? = UIColor.lightGray
//        let shadowOpacity: Float = 0.2
//
//            layer.cornerRadius = cornerRadius
//            let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 1)
//
//            layer.masksToBounds = false
//            layer.shadowColor = shadowColor?.cgColor
//            layer.shadowOffset = CGSize(width: 1, height: 0.0);
//            layer.shadowOpacity = shadowOpacity
//            layer.shadowPath = shadowPath.cgPath
        
        
        
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 0.3
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0 , height: 0)
    }
    func cardforNotification() {
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 0.3
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0 , height: 0)
    }
    
    func roundCorners(corners:UIRectCorner, radius: CGFloat) {

        DispatchQueue.main.async {
            let path = UIBezierPath(roundedRect: self.bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
            let maskLayer = CAShapeLayer()
            maskLayer.frame = self.bounds
            maskLayer.path = path.cgPath
            self.layer.mask = maskLayer
        }
    }
    
}


extension UIImageView {
    func setRoundimage(){
        layer.cornerRadius = (layer.frame.size.width ) / 2
       clipsToBounds = true
       layer.borderWidth = 3.0
       layer.borderColor = UIColor.white.cgColor
    }
    func setRoundimageborder(){
        layer.cornerRadius = (layer.frame.size.width ) / 2
       clipsToBounds = true
       layer.borderWidth = 3.0
       layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) //UIColor.white.cgColor
    }
    
    
}
extension UIViewController {
    
    func presentAlert(withTitle title: String, message : String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) { action in
            print("You've pressed OK Button")
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    func showToast(message : String, seconds: Double = 2.0) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.view.backgroundColor = UIColor.black
        alert.view.alpha = 0.6
        alert.view.layer.cornerRadius = 15
        
        self.present(alert, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
            alert.dismiss(animated: true)
        }
    }
    
    
    func navigationButton_profile() {

        let btn1 = UIButton()  //UIButton(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
          
         btn1.frame = CGRect(x: 0.0, y: 0.0, width: 10, height: 10)
        btn1.setImage(UIImage(named: "Chat"), for: .normal) //setBackgroundImage(UIImage(named: "user (-1"), for: .normal)
        btn1.addTarget(self, action: #selector(btnprofilClick(_:)), for: .touchUpInside)
       
        let btnprofile = UIBarButtonItem(customView: btn1)
         self.navigationItem.setRightBarButtonItems([btnprofile], animated: true)
    }
    
    
    @objc func btnprofilClick(_ sender: Any){
               
               let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
              let vc =  storyBoard.instantiateViewController(withIdentifier: "NotificationVC") as? NotificationVC
               self.navigationController?.pushViewController(vc!, animated: true)
               
           }
}
