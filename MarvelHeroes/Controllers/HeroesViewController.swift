//
//  HeroesViewController.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 07/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import UIKit

class HeroesViewController: UIViewController {

    @IBOutlet var heroesCollectionView: UICollectionView!
    
    fileprivate let cellReuseIdentifier = "heroCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.heroesCollectionView.dataSource = self
        self.heroesCollectionView.delegate = self
        
        self.registerCell()
        self.resizeCells()
    }
    
    // MARK: - View configuration
    
    func registerCell() {
        let nib = UINib(nibName: "HeroCollectionViewCell", bundle: nil)
        heroesCollectionView.register(nib, forCellWithReuseIdentifier: cellReuseIdentifier)
    }
    
    func resizeCells(){
        if let flowLayout = heroesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: 1,height: 1)
            flowLayout.minimumInteritemSpacing = 3
            flowLayout.minimumLineSpacing = 3
        }
    }
}

// MARK: - Heroes Collection View DataSource Methods

extension HeroesViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as! HeroCollectionViewCell
        cell.heroImageView.image = UIImage(named: "bomber")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "homeToDetail", sender: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.heroesCollectionView.frame.height / 6 * 5, height: self.heroesCollectionView.frame.height / 6 * 5)
    }
    
}
