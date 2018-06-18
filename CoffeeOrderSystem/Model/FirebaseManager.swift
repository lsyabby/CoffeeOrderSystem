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


class FirebaseManager {
    
    static let shared = FirebaseManager()
    lazy var ref = Database.database().reference()
    
    func getItemInfo(completion: @escaping ([ItemInfo]) -> Void) {
        
        self.ref
            .child("itmes")
            .observeSingleEvent(of: .value) { (snapshot) in
                
                var infoList: [ItemInfo] = []
                
                guard let value = snapshot.value as? [String: [String: Any]] else { return }
                    
                for item in value.values {
                    
                    guard let name = item["name"] as? String,
                        let price = item["price"] as? Int,
                        let image = item["image"] as? String else { return }
                    
                    let info = ItemInfo(name: name, price: price, image: image)
                    
                    infoList.append(info)
                }
                completion(infoList)
        }
    }
    
}
