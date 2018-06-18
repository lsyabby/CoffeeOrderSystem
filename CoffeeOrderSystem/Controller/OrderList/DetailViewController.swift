//
//  DetailViewController.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailTableView: UITableView!
    var itemInfo: OrderInfo?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }

    func setupTableView() {
        
        detailTableView.delegate = self
        
        detailTableView.dataSource = self
        
        let nibOne = UINib(nibName: "DetailOneTableViewCell", bundle: nil)
        
        detailTableView.register(nibOne, forCellReuseIdentifier: "DetailOneTableViewCell")
        
        let nibTwo = UINib(nibName: "DetailTwoTableViewCell", bundle: nil)
        
        detailTableView.register(nibTwo, forCellReuseIdentifier: "DetailTwoTableViewCell")
        
        let nibThree = UINib(nibName: "DetailThreeTableViewCell", bundle: nil)
        
        detailTableView.register(nibThree, forCellReuseIdentifier: "DetailThreeTableViewCell")
    }
    
}


extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let orderInfo = itemInfo else { return UITableViewCell() }
        if indexPath.row == 0 {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailOneTableViewCell", for: indexPath) as? DetailOneTableViewCell else { return UITableViewCell() }
            
            cell.setupOrderCell(iteminfo: orderInfo)
            
            return cell
            
        } else if indexPath.row == 1 || indexPath.row == 2 {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTwoTableViewCell", for: indexPath) as? DetailTwoTableViewCell else { return UITableViewCell() }
            
            return cell
            
        } else if indexPath.row == 3 {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailThreeTableViewCell", for: indexPath) as? DetailThreeTableViewCell else { return UITableViewCell() }
            
            cell.setupOrderCell(iteminfo: orderInfo)
            
            return cell
            
        } else {
            
            return UITableViewCell()
        }
    }
    
}
