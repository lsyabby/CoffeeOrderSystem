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
    private var btnListVC: ItemBtnListViewController!
    let firebaseManager = FirebaseManager()
    var itemInfo: [ItemInfo] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ItemListViewController, segue.identifier == "ItemListVC" {
            
            self.itemListVC = destination
            
            destination.itemInfo = self.itemInfo
            
        } else if let destination = segue.destination as? ItemBtnListViewController, segue.identifier == "BtnListVC" {
            
            destination.delegate = self
            
            self.btnListVC = destination
        }
    }
}


extension ItemViewController: ItemBtnListViewControllerDelegate {
   
    func itemSelect(info: ItemInfo) {
        
        self.itemInfo.append(info)
        
        itemListVC.itemInfo = self.itemInfo
    }
}
