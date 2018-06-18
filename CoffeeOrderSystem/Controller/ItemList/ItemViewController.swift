//
//  ItemBtnViewController.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit
import Firebase


class ItemViewController: UIViewController {

    private var itemListVC: ItemListViewController!
    let firebaseManager = FirebaseManager()
    var itemInfo: [ItemInfo] = []
    var selectedInt: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ItemListViewController, segue.identifier == "ItemListVC" {
            
            self.itemListVC = destination
            
            destination.selectedInt = self.selectedInt
            
            destination.itemInfo = self.itemInfo
        }
    }

}
