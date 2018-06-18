//
//  FirebaseManager.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import Foundation
import FirebaseCore
import FirebaseDatabase

protocol FirebaseManagerDelegate: class {

    func manager(didGetItems: [ItemInfo])
    
    func manager(didGetOrders: [OrderInfo])
}


class FirebaseManager {
    
    weak var delegate: FirebaseManagerDelegate?
    lazy var ref = Database.database().reference()
    
    func getItemInfo() {
        
        self.ref.observeSingleEvent(of: .value) { (snapshot) in
            
            var infoList: [ItemInfo] = []
            
            guard let json = snapshot.value as? [String: Any],
                let jsonResult = json["items"] as? [AnyObject] else { return }
            
            for i in 0..<jsonResult.count {
                guard let name = jsonResult[i]["name"] as? String,
                    let price = jsonResult[i]["price"] as? Int,
                    let image = jsonResult[i]["image"] as? String else { return }
                
                let info = ItemInfo(name: name, price: price, image: image)
                
                infoList.append(info)
            }
            
            self.delegate?.manager(didGetItems: infoList)
        }
    }
    
    func getOrderInfo() {
        
        self.ref.observeSingleEvent(of: .value) { (snapshot) in
            
            var infoList: [OrderInfo] = []
            
            guard let json = snapshot.value as? [String: Any] else { return }
            
            guard let jsonResult = json["orders"] as? [String: [String: Any]] else { return }

            for k in jsonResult {
                
                let number = k.key
                
                guard let acount = k.value["account"] as? String,
                let itemcount = k.value["itemCount"] as? Int,
                let price = k.value["price"] as? Int,
                let status = k.value["status"] as? Int,
                let time = k.value["time"] as? Int else { return }
                
                let info = OrderInfo(number: number, account: acount, itemCount: itemcount, price: price, status: status, time: time)
                
                infoList.append(info)
            }
            
            self.delegate?.manager(didGetOrders: infoList)
        }
    }
}
