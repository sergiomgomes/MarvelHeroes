//
//  HeroDetailTableViewCell.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 13/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import UIKit

class HeroDetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var heroSectionCollectionView: UICollectionView!
    
    func setCollectionViewDelegateAndDataSource<T: UICollectionViewDataSource & UICollectionViewDelegate>(dataSourceAndDelegate: T, forRowAt: Int) {
        self.heroSectionCollectionView.delegate = dataSourceAndDelegate
        self.heroSectionCollectionView.dataSource = dataSourceAndDelegate
        self.heroSectionCollectionView.tag = forRowAt
        self.heroSectionCollectionView.reloadData()
    }
    
}
