//
//  CombinedViewController.swift
//  Poll
//
//  Created by Jonathan T. Miles on 7/26/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EmbedVotingView" {
            let vc = segue.destination as? VoteControllerProtocol
            vc?.voteController = voteController
        }
        
        if segue.identifier == "EmbedResultsView" {
            let vc = segue.destination as? VoteControllerProtocol
            vc?.voteController = voteController
        }
         
        // Pass the selected object to the new view controller.
    }
    
    
    // MARK: - Properties
    
    var voteController: VoteController?

}
