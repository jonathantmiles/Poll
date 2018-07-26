//
//  VoteResponseTableViewCell.swift
//  Poll
//
//  Created by Jonathan T. Miles on 7/26/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class VoteResponseTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func updateViews () {
        guard let vote = vote else { return }
        nameTextLabel.text = vote.name
        responseTextLabel.text = vote.response
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MMM-yyyy"
        let dateString = formatter.string(from: vote.timestamp)
        timestampTextLabel.text = dateString
    }

    // MARK: - Properites
    
    var vote: Vote? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var responseTextLabel: UILabel!
    @IBOutlet weak var timestampTextLabel: UILabel!
}
