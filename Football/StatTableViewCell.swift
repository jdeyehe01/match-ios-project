//
//  StatTableViewCell.swift
//  football
//
//  Created by Adel Benzaid on 10/07/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import UIKit

class StatTableViewCell: UITableViewCell {

    @IBOutlet weak var statTeamOne: UILabel!
    @IBOutlet weak var typeStat: UILabel!
    @IBOutlet weak var statTeamTwo: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
