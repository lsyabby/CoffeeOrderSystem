//
//  ItemTableViewCell.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit
import SDWebImage

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func icedAction(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            
            
        }
    }
    
    @IBAction func hotAction(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func sugarYesAction(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func sugarNoAction(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
    }
    
    func setupTableViewCell(itemInfo: ItemInfo) {
        
        itemImageView.sd_setImage(with: URL(string: itemInfo.image))
        
        itemNameLabel.text = itemInfo.name
    }
}
