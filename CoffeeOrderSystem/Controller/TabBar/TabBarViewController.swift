//
//  TabBarViewController.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

enum TabBar {
    
    case itemList
    case orderList
    
    func controller() -> UIViewController {
        
        switch self {
            
        case .itemList:
            
            return UIStoryboard.itemListStoryboard().instantiateInitialViewController()!
            
        case .orderList:
            
            return UIStoryboard.orderListStoryboard().instantiateInitialViewController()!
        }
    }
    
    func image() -> UIImage {
        
        switch self {
            
        case .itemList:
            
            return #imageLiteral(resourceName: "shopping-cart")
            
        case .orderList:
            
            return #imageLiteral(resourceName: "check-list")
        }
    }
    
    func selectedImage() -> UIImage {
        
        switch self {
            
        case .itemList:
            
            return #imageLiteral(resourceName: "shopping-cart").withRenderingMode(.alwaysTemplate)
            
        case .orderList:
            
            return #imageLiteral(resourceName: "check-list").withRenderingMode(.alwaysTemplate)
        }
    }
}

class TabBarViewController: UITabBarController {
    
    let tabs: [TabBar] = [.itemList, .orderList]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupTab()
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    private func setupTab() {
        
        tabBar.tintColor = UIColor.black
        
        tabBar.barTintColor = UIColor.white
        
        var controllers: [UIViewController] = []
        
        for tab in tabs {
            
            let controller = tab.controller()
            
            let item = UITabBarItem(title: nil, image: tab.image(), selectedImage: tab.selectedImage())
            
            item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
            
            controller.tabBarItem = item
            
            controllers.append(controller)
        }
        
        setViewControllers(controllers, animated: false)
    }
}

