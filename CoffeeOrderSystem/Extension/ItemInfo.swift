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

struct OrderInfo {
    
    var number: String
    
    var account: String
    var itemCount: Int
    var price: Int
    var status: Int
    var time: Int
}

struct Coffee {
    
    var cups: Int
    var iced: Bool
    var sugar: Bool
}

enum ItemIndex {
    
    case Espresso
    case Americano
    case Latte
    case Mocha
    case SingleOrigin
    case BlackTea
    case GreenTea
}
