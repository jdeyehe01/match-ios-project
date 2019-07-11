//
//  MatchTableViewController.swift
//  football
//
//  Created by etudiant on 25/06/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import UIKit


struct Match : Decodable{
    
    let id: String
    let nameTeamOne : String
    let nameTeamTwo : String
    let scoreTeamOne : String
    let scoreTeamTwo : String
    let status: String
    let league: String
    let timeMatch : String
    let statistics : [Stat]
    

    enum CodingKeys: String, CodingKey{
        case id = "match_id"
        case nameTeamOne = "match_hometeam_name"
        case nameTeamTwo = "match_awayteam_name"
        case scoreTeamOne = "match_hometeam_score"
        case scoreTeamTwo = "match_awayteam_score"
        case status = "match_status"
        case league = "league_name"
        case timeMatch = "match_time"
        case statistics = "statistics"
        
    }
}



struct Stat : Decodable{
    let type: String
    let teamOne : String
    let teamTwo : String
    
    enum CodingKeys: String, CodingKey{
        case type = "type"
        case teamOne = "home"
        case teamTwo = "away"
    }
}




class MatchTableViewController: UITableViewController {

    
    var matches: [Match] = []
    var id = "0"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var urlWithLeague = "https://apiv2.apifootball.com/?action=get_events&from=2019-04-01&to=2019-04-03&league_id="+id+"&APIkey=7d92c93223013f2662e3f51a6ed1b410847ee0d9fdcc6fb68d19dcc4d61d23fa"
        let url = URL(string: urlWithLeague)!
        
        
        let task = URLSession.shared.dataTask(with: url){ (data,response,error) in
            let jsonDecoder = JSONDecoder()
            if let data = data,
               let match = try? jsonDecoder.decode([Match].self, from: data){
                self.matches = match
                self.tableView.reloadData()
            }
        }
        task.resume()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "matchCell", for: indexPath) as! MachTableViewCell
       
        let match = matches[indexPath.row]
        
        cell.nameTeamOne.text = match.nameTeamOne
        
        cell.nameTeamTwo.text = match.nameTeamTwo
        
        cell.score.text = match.scoreTeamOne + " - " + match.scoreTeamTwo
        
                
        return cell
        
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueCell", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailMatchViewController {
    
            var match = matches[(tableView.indexPathForSelectedRow?.row)!]
            
            destination.teamOneName = match.nameTeamOne
            destination.teamTwoName = match.nameTeamTwo
            destination.score = match.scoreTeamOne + " - " + match.scoreTeamTwo
            destination.time = match.timeMatch
            destination.league = match.league
            destination.statistics = match.statistics
            
        }
    }
    

    
}
