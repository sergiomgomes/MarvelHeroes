//
//  HeroDataSource.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 16/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import Foundation
import UIKit

class HeroDataSource : GenericDataSource<Hero>, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "heroCell", for: indexPath) as! HeroCollectionViewCell
        cell.heroImageView.image = UIImage(named: "bomber")
        
        return cell
    }
}
