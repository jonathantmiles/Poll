//
//  VoteController.swift
//  Poll
//
//  Created by Jonathan T. Miles on 7/26/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

class VoteController {
    
    // MARK: - Create function
    
    func createVote(withName name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
    
    // MARK: - Properties
    
    var votes: [Vote] = []
}
