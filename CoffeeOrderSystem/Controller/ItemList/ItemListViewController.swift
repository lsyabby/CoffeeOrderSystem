//
//  ItemListViewController.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    
    @IBOutlet weak var ItemTableView: UITableView!
    
    let firebaseManager = FirebaseManager()
    var selectedInt: [Int] = []
    var itemInfo: [ItemInfo] = []
    var seletedItems: [ItemInfo] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        
//        getData()
    }

//    func getData() {
//
//        firebaseManager.getItemInfo { (itemlist) in
//
//            self.itemInfo = itemlist
//        }
//    }
    
    func setupTableView() {
        
        ItemTableView.delegate = self
        
        ItemTableView.dataSource = self
                
        let nib = UINib(nibName: "ItemTableViewCell", bundle: nil)
        
        ItemTableView.register(nib, forCellReuseIdentifier: "ItemTableViewCell")
    }
}


extension ItemListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return itemInfo.count
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as? ItemTableViewCell else { return UITableViewCell() }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

