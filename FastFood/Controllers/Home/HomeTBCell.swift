//
//  HomeTBCell.swift
//  FastFood
//
//  Created by Zafar Najmi on 24/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class HomeTBCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var mainView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        img.setRoundimageborder()
        mainView.addSoftUIEffectForView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {

        // just use the layer's shadow... adding the Bezier
        //let shadowPath = UIBezierPath(roundedRect: innerView.bounds, cornerRadius: cornerRadius)
        //innerView.layer.shadowPath = shadowPath.cgPath

//        mainView.layer.cornerRadius = 8
//        mainView.layer.masksToBounds = false
//        mainView.layer.shadowColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        mainView.layer.shadowOffset = CGSize(width: 3, height: 4);
//        mainView.layer.shadowOpacity = 1
//        mainView.layer.borderWidth = 1.0
        //mainView.layer.borderColor = UIColor(red:0.00, green:0.87, blue:0.39, alpha:1.0).cgColor

    }
    
}
