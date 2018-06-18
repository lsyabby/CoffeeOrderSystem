//
//  OrderListViewController.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

class OrderListViewController: UIViewController {

    @IBOutlet weak var orderTableView: UITableView!
    
    let firebaseManager = FirebaseManager()
    var itemInfo: [OrderInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        
        firebaseManager.delegate = self
        
        firebaseManager.getOrderInfo()
    }

    func setupTableView() {
        
        orderTableView.delegate = self
        
        orderTableView.dataSource = self
        
        let nib = UINib(nibName: "OrderTableViewCell", bundle: nil)
        
        orderTableView.register(nib, forCellReuseIdentifier: "OrderTableViewCell")
    }

}


extension OrderListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return itemInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath) as? OrderTableViewCell {

            cell.setupOrderCell(iteminfo: itemInfo[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}


extension OrderListViewController: FirebaseManagerDelegate {
   
    func manager(didGetItems: [ItemInfo]) {
        print("===============")
    }
    
    func manager(didGetOrders: [OrderInfo]) {
       
        self.itemInfo = didGetOrders
        
        self.orderTableView.reloadData()
    }
}
