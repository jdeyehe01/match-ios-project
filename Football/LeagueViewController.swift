//
//  LeagueViewController.swift
//  football
//
//  Created by Adel Benzaid on 11/07/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import UIKit


struct League {
    let id: String?
    let name: String?
    let image: UIImage?
}

 var leagues: [League] = []
class LeagueViewController: UIViewController , UICollectionViewDelegate{
    @IBOutlet weak var liga: UIImageView!
    @IBOutlet weak var bundesliga: UIImageView!
    
    @IBOutlet weak var premierLeague: UIImageView!
    @IBOutlet weak var ligueOne: UIImageView!
    @IBOutlet weak var serieA: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        leagues = [League(id: "148", name: "Premier League",image: UIImage(named: "pl")),League(id: "196", name: "Bundesliga",image: UIImage(named: "bundesliga")),League(id: "176", name: "Ligue 1",image: UIImage(named: "ligue1")),League(id:"468", name: "La Liga ",image: UIImage(named: "liga")),League(id: "262", name: "Serie A",image: UIImage(named: "serieA"))]
        
        
        
        // Do any additional setup after loading the view.
        //let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        //leag
    }

 

    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        performSegue(withIdentifier: "leagueCelle", sender: self)
        
    }*/
    
   
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            //segue.destination.title = nameTextField.text
            
            if let destination = segue.destination as? MatchTableViewController {
                
                if segue.identifier == "seguePL"{
                    destination.id = leagues[0].id!
                }else if segue.identifier == "segueBundesliga"{
                    destination.id = leagues[1].id!
                }else  if segue.identifier == "segueLigueOne"{
                    destination.id = leagues[2].id!
                }else  if segue.identifier == "segueLiga"{
                    destination.id = leagues[3].id!
                }else  if segue.identifier == "segueSerieA"{
                    destination.id = leagues[4].id!
                }
            }
           
        
    }
    

}
