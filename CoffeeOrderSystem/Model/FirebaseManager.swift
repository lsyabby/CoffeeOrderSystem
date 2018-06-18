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
            completion(infoList)
        }
    }
}
