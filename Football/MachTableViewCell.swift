//
//  MachTableViewCell.swift
//  football
//
//  Created by Adel Benzaid on 07/07/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import UIKit

class MachTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameTeamOne: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var nameTeamTwo: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
        // Configure the view for the selected state
    }

}
