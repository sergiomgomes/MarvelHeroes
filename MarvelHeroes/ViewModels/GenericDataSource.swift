//
//  GenericDataSource.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 16/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import Foundation

class GenericDataSource<T> : NSObject {
    var data: Observable<[T]> = Observable([])
}
