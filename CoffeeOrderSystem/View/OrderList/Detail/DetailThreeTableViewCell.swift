//
//  DetailThreeTableViewCell.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

class DetailThreeTableViewCell: UITableViewCell {

    @IBOutlet weak var totalItemLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setupOrderCell(iteminfo: OrderInfo) {
        
        totalItemLabel.text = String(describing: iteminfo.itemCount)
        
        totalPriceLabel.text = "\(String(describing: iteminfo.price)) TWD"
    }
}
