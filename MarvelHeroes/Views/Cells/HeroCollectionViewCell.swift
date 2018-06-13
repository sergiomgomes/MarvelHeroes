//
//  HeroCollectionViewCell.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 08/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import UIKit

class HeroCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        let screenWidth = UIScreen.main.bounds.size.width
        
        widthConstraint.constant = (screenWidth / 3) - 3
    }
    
}
