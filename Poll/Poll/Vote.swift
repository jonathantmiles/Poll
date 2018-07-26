//
//  Vote.swift
//  Poll
//
//  Created by Jonathan T. Miles on 7/26/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct Vote {
    init (name: String, response: String, timestamp: Date = Date()){
        self.name = name
        self.response = response
        self.timestamp = timestamp
    }
    
    let name: String
    let response: String
    let timestamp: Date
    
    
}
