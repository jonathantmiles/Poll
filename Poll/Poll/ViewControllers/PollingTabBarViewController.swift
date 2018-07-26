//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Jonathan T. Miles on 7/26/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    func passVoteControllerToChildViewControllers () {
        guard let viewControllers = viewControllers else { return }
        
        for childVC in viewControllers {
            if let vc = childVC as? VoteControllerProtocol {
                vc.voteController = voteController
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passVoteControllerToChildViewControllers()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Properties
    
    var voteController = VoteController()

}
