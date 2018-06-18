//
//  SectionItemViewController.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 16/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import UIKit

class SectionItemViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var sectionItemImageView: UIImageView!
    
    @IBOutlet weak var sectionItemTitleLabel: UILabel!
    
    @IBOutlet weak var sectionItemDescriptionLabel: UILabel!
    
    // MARK: - Attributes
    var sectionItemImage: UIImage?
    var sectionItemTitle : String?
    var sectionItemDescription: String?
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*sectionItemImageView.image = sectionItemImage
        sectionItemTitleLabel.text = sectionItemTitle
        sectionItemDescriptionLabel.text = sectionItemDescription*/
    }
    
    // MARK: - Navigation

    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
