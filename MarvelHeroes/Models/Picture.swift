//
//  Picture.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 16/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import Foundation

struct Picture {
    
    let path: String
    let pictureExtension: String
    
    var pictureFullPath: String {
        return [path, pictureExtension].joined(separator: ".")
    }
}
