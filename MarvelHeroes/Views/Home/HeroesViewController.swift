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
    
    let dataSource = HeroDataSource()
    
    lazy var viewModel : HeroViewModel = {
        let viewModel = HeroViewModel(dataSource: dataSource)
        return viewModel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerCell()
        self.resizeCells()
        
        self.heroesCollectionView.delegate = self
        
        self.heroesCollectionView.dataSource = self.dataSource
        self.dataSource.data.addAndNotify(observer: self) { [weak self] in
            self?.heroesCollectionView.reloadData()
        }
    }
    
    // MARK: - View configuration
    
    func registerCell() {
        let nib = UINib(nibName: "HeroCollectionViewCell", bundle: nil)
        heroesCollectionView.register(nib, forCellWithReuseIdentifier: "heroCell")
    }
    
    func resizeCells(){
        if let flowLayout = heroesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: 1,height: 1)
            flowLayout.minimumInteritemSpacing = 3
            flowLayout.minimumLineSpacing = 3
        }
    }
}

// MARK: - Heroes Collection View Delegate Methods

extension HeroesViewController : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "homeToDetail", sender: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.heroesCollectionView.frame.height / 6 * 5, height: self.heroesCollectionView.frame.height / 6 * 5)
    }
    
}
