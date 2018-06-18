//
//  ItemBtnCollectionViewCell.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit
import SDWebImage

class ItemBtnCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var itemBtn: UIButton!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    
    func setupBtnImage(itemInfo: String) {
        
        itemBtn.imageView?.contentMode = .scaleAspectFill
        
        itemBtn.sd_setBackgroundImage(with: URL(string: itemInfo), for: .normal)
    }
}
