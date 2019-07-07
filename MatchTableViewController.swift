//
//  MatchTableViewController.swift
//  football
//
//  Created by etudiant on 25/06/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import UIKit


struct Match{
    
    let nameTeamOne : String
    let nameTeamTwo : String
    let score : String
}

class MatchTableViewController: UITableViewController {

    
    let matches: [Match] = [Match(nameTeamOne: "Lyon", nameTeamTwo: "Marseille", score: "3-0"),Match(nameTeamOne: "Paris", nameTeamTwo: "Chelsea", score: "1-2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count - 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "matchCell", for: indexPath) as! MachTableViewCell
       
        let match = matches[indexPath.count-1]
        
        cell.nameTeamOne.text = match.nameTeamOne
        
        cell.nameTeamTwo.text = match.nameTeamTwo
        
        cell.scoreMatchLabel.text = match.score
        
        return cell
    }

  

}
