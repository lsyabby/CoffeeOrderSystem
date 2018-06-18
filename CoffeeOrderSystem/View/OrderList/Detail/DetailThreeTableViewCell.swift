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
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var commitBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupBtn()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupBtn() {
        
        cancelBtn.layer.borderWidth = 1
        
        cancelBtn.layer.borderColor = UIColor.gray.cgColor
        
        commitBtn.layer.borderWidth = 1
        
        commitBtn.layer.borderColor = UIColor.gray.cgColor
    }
    
    
    func setupOrderCell(iteminfo: OrderInfo) {
        
        totalItemLabel.text = String(describing: iteminfo.itemCount)
        
        totalPriceLabel.text = "\(String(describing: iteminfo.price)) TWD"
    }
}
