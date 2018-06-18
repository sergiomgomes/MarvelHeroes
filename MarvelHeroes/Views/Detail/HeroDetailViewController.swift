//
//  HeroDetailsViewController.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 13/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import UIKit

class HeroDetailsViewController: UIViewController {
    
    // MARK: - Outlet
    
    @IBOutlet weak var heroImageView: UIImageView!
    
    @IBOutlet weak var heroSectionsTableView: UITableView!
    
    // MARK: - Attributes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.heroSectionsTableView.dataSource = self
        self.heroSectionsTableView.delegate = self
    }
    
    enum TableSections: Int {
        case comics
        case events
        case stories
        case series
        
        init(rawValue: Int){
            switch rawValue {
            case 0:
                self = .comics
            case 1:
                self = .events
            case 2:
                self = .stories
            case 3:
                self = .series
            default:
                self = .comics
            }
        }
    }
    
}

extension HeroDetailsViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailsTableViewCell", for: indexPath) as! HeroDetailTableViewCell
        
        return cell
    }
    
}


extension HeroDetailsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        guard let heroDetailsTableViewCell = cell as? HeroDetailTableViewCell else { return }
        
        heroDetailsTableViewCell.setCollectionViewDelegateAndDataSource(dataSourceAndDelegate: self, forRowAt: indexPath.section)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        (view as! UITableViewHeaderFooterView).backgroundView?.backgroundColor = UIColor.red
        (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.white
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case TableSections.comics.rawValue:
            return "Comics"
        case TableSections.events.rawValue:
            return "Events"
        case TableSections.series.rawValue:
            return "Series"
        case TableSections.stories.rawValue:
            return "Stories"
        default:
            return ""
        }
    }
    
}

extension HeroDetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "detailsCollectionViewCell", for: indexPath) as! HeroDetailCollectionViewCell
        cell.sectionImageView.image = UIImage(named: "bomber")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showSectionItem", sender: indexPath)
    }
}
