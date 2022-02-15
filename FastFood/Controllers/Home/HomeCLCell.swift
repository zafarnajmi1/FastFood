//
//  HomeCLCell.swift
//  FastFood
//
//  Created by Zafar Najmi on 24/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class HomeCLCell: UICollectionViewCell {

    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        img.setRoundimage()
    }

}
