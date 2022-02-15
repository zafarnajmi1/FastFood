//
//  FavoritCell.swift
//  FastFood
//
//  Created by Zafar Najmi on 01/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class FavoritCell: UITableViewCell {
    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
       mainView.cardforNotification()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
