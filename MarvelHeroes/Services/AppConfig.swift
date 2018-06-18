//
//  AppConfig.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 07/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import Foundation

class AppConfig{
    static func verifyAPIKeysSetUp(){
        if APIKeys.getPublicKey().isEmpty && APIKeys.getPrivateKey().isEmpty {
            fatalError("The Marvel API Keys does not have value!")
        }
    }
}
