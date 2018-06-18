//
//  ItemInfo.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import Foundation

struct ItemInfo {
    
    var name: String
    var price: Int
    var image: String
}


enum ItemIndex: Int {
    
    case Espresso = 0
    case Americano = 1
    case Latte = 2
    case Mocha = 3
    case SingleOrigin = 4
    case BlackTea = 5
    case GreenTea = 6
}
