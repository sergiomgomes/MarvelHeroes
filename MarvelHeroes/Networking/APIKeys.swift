//
//  APIKeys.swift
//  MarvelHeroes
//
//  Created by Sergio Gomes on 07/06/18.
//  Copyright © 2018 Sergio Gomes. All rights reserved.
//

import Foundation

class APIKeys {
    
    private static func valueForAPIKey(named keyname: String) -> String {
        let filePath = Bundle.main.path(forResource: "apiKeys", ofType: "plist")
        let plist = NSDictionary(contentsOfFile:filePath!)
        let value = plist?.object(forKey: keyname) as! String
        return value
    }
    
    static func getPublicKey() -> String {
        return self.valueForAPIKey(named: "MARVEL_PUBLIC_KEY")
    }
    
    static func getPrivateKey() -> String {
        return self.valueForAPIKey(named: "MARVEL_PRIVATE_KEY")
    }
    
}
