//
//  ItemListViewController.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    
    var selectedInt: [Int] = []
    var itemInfo: [ItemInfo] = []
    var seletedItems: [ItemInfo] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
