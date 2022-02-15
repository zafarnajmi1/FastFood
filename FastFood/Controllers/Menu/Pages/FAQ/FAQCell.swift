//
//  FAQCell.swift
//  FastFood
//
//  Created by Zafar Najmi on 04/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit
import  FoldingCell
class FAQCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var foregroundTop: NSLayoutConstraint!
    @IBOutlet weak var containverTop: NSLayoutConstraint!
    @IBOutlet weak var forgroundView: RotatedView!
     var animationItemViews: [RotatedView]?
     @IBInspectable open var itemCount: NSInteger = 2
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func commonInit() {
       // configureDefaultState()
        
        selectionStyle = .none
        
        containerView.layer.cornerRadius = forgroundView.layer.cornerRadius
        containerView.layer.masksToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
