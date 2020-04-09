//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Stephan Ng on 4/8/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    // Implicitely unwrap optional the player because we don't want to start the app if the player doesn't even load.
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize the player
        player = Player()
    }
    
    // Defining the logic for the IBActions
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            // If you have a variable by the name of "player" in the new VC,
            // you can assign it's value to the value of the player model that you
            // have built in this vc
            skillVC.player = player
        } // else if let ... can be used if the segue can go to multiple screens
    }


}
