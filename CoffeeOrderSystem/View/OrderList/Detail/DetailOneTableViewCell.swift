//
//  DetailOneTableViewCell.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

class DetailOneTableViewCell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var accountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupOrderCell(iteminfo: OrderInfo) {
        
        numberLabel.text = iteminfo.number
        
        timeLabel.text = String(describing: Date(timeIntervalSince1970: TimeInterval(iteminfo.time)))
        
        accountLabel.text = iteminfo.account
    }
}
