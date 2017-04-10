//
//  SetInfoCell.swift
//  Aimeishi
//
//  Created by RN-079 on 2017/04/10.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit

class SendCell: UICollectionViewCell {
    @IBOutlet weak var iconView : UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconView.image = nil
        titleLbl.text = nil
    }
}
