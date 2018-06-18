//
//  COSUIStoryboard.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    static func mainStoryboard() -> UIStoryboard { return UIStoryboard(name: "Main", bundle: nil) }
    
    static func itemListStoryboard() -> UIStoryboard { return UIStoryboard(name: "ItemList", bundle: nil) }
    
    static func orderListStoryboard() -> UIStoryboard { return UIStoryboard(name: "OrderList", bundle: nil) }
}
