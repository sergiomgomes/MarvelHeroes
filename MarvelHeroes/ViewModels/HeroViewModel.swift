//
//  HeroViewModel.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 16/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import Foundation

struct HeroViewModel {
    
    weak var dataSource : GenericDataSource<Hero>?
    
    init(dataSource : GenericDataSource<Hero>?) {
        self.dataSource = dataSource
    }
}
