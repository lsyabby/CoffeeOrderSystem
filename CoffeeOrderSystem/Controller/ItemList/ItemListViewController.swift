//
//  ItemListViewController.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    
    let firebaseManager = FirebaseManager()
    var selectedInt: [Int] = []
    var itemInfo: [ItemInfo] = []
    var seletedItems: [ItemInfo] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }

    func getData() {
        
        firebaseManager.getItemInfo { (itemlist) in
            
            self.itemInfo = itemlist
        }
    }
    
    func filterItems() {
        
        for iii in itemInfo {
            
        }
    }

}


extension ItemListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
}
