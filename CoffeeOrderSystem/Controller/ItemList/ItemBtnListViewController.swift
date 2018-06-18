//
//  ItemBtnListViewController.swift
//  CoffeeOrderSystem
//
//  Created by 李思瑩 on 2018/6/18.
//  Copyright © 2018年 李思瑩. All rights reserved.
//

import UIKit

class ItemBtnListViewController: UIViewController {

    @IBOutlet weak var btnCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupListGridView()
        
        registerCell()
    }

    
    func registerCell() {
        
//        btnCollectionView.showsHorizontalScrollIndicator = false
        
        btnCollectionView.delegate = self
        
        btnCollectionView.dataSource = self
        
        let upnib = UINib(nibName: String(describing: ItemBtnCollectionViewCell.self), bundle: nil)
        
        btnCollectionView.register(upnib, forCellWithReuseIdentifier: String(describing: ItemBtnCollectionViewCell.self))
    }

}


extension ItemBtnListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemBtnCollectionViewCell", for: indexPath) as? ItemBtnCollectionViewCell {
            return cell
        }
        return UICollectionViewCell()
    }
    
    func setupListGridView() {
        
        let screenSize = UIScreen.main.bounds
        
        if let categoryCollectionViewFlowLayout = btnCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            
            categoryCollectionViewFlowLayout.itemSize = CGSize(width: screenSize.width / 4 - 2.5, height: screenSize.width / 4 - 2.5)
            
            categoryCollectionViewFlowLayout.minimumInteritemSpacing = 0
            
            categoryCollectionViewFlowLayout.minimumLineSpacing = 0
            
            categoryCollectionViewFlowLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        }
    }
}
