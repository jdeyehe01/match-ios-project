//
//  DetailMatchViewController.swift
//  football
//
//  Created by Adel Benzaid on 07/07/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import UIKit


class DetailMatchViewController: UIViewController , UITableViewDataSource {
    

    @IBOutlet weak var leagueLabel: UILabel!
    @IBOutlet weak var nameTeamOneDetail: UILabel!
    @IBOutlet weak var scoreDetail: UILabel!
    @IBOutlet weak var nameTeamTwoDetail: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    

    var score: String?
    var teamOneName: String?
    var teamTwoName: String?
    var league: String?
    var time: String?
    var statistics: [Stat] = []

    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        nameTeamOneDetail.text = teamOneName
        scoreDetail.text = score
        nameTeamTwoDetail.text = teamTwoName
        timeLabel.text = time
        leagueLabel.text = league
        
}
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return statistics.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellStat", for: indexPath) as! StatTableViewCell
        
        let stat = statistics[indexPath.row]
        
        cell.statTeamOne?.text = stat.teamOne
        cell.typeStat?.text = stat.type
        cell.statTeamTwo?.text = stat.teamTwo
        return cell
        
    }
    




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
