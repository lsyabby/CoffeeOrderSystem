//
//  ItemBtnViewController.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit
import Firebase


class ItemBtnViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    let firebaseManager = FirebaseManager()
    var itemInfo: [ItemInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getData()
    }

    func getData() {
        
        firebaseManager.getItemInfo { (itemlist) in
            
            self.itemInfo = itemlist
        }
    }
    
    func setupBtn() {
        
         btn1.imageView?.image
    }
    

}
