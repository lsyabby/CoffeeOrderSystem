//
//  ItemBtnCollectionViewCell.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

class ItemBtnCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var itemBtn: UIButton!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    
    func setupBtnImage(itemInfo: ItemInfo) {
        
        let img = UIImage(named: itemInfo.image)
        
        itemBtn.setImage(img, for: .normal)
    }
}
