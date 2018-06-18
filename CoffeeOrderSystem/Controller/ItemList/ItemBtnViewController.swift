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
    private var itemListVC: ItemListViewController!
    let firebaseManager = FirebaseManager()
    var itemInfo: [ItemInfo] = []
    var selectedInt: [Int] = []
    
    @IBAction func btn1Action(_ sender: UIButton) {
        
        selectedInt.append(sender.tag)
    }
    
    @IBAction func btn2Action(_ sender: UIButton) {
        
        selectedInt.append(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getData()
        
        btn1.addTarget(self, action: #selector(btnSelectItem), for: .touchUpInside)
    }

    func getData() {
        
        firebaseManager.getItemInfo { (itemlist) in
            
            self.itemInfo = itemlist
        }
    }
    
//    func setupBtn() {
//
//         btn1.imageView?.image
//    }
    
    @objc func btnSelectItem() {
        
//        selectItems.append()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ItemListViewController, segue.identifier == "ItemListVC" {
            
            self.itemListVC = destination
            
            destination.selectedInt = self.selectedInt
            
            destination.itemInfo = self.itemInfo
        }
    }

}
