//
//  DesiredLeagueViewController.swift
//  Swoosh
//
//  Created by Johnny Young on 7/12/18.
//  Copyright © 2018 Johnny Young. All rights reserved.
//

import UIKit

class DesiredLeagueViewController: UIViewController {
    
    var player = Player()
    
    @IBOutlet weak var nextButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func desiredLeagueSelected(sender: UIButton) {
        playerSelectedLeague(sender: sender)
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        if player.desiredLeague != nil {
            performSegue(withIdentifier: "skillLevelSegue", sender: self)
        } else {
            leagueNotSelectedAlert()
        }
    }
    
    func playerSelectedLeague(sender: UIButton) {
        player.desiredLeague = sender.titleLabel?.text
        nextButton.isEnabled = true
    }
    
    func leagueNotSelectedAlert() {
        
        let alert = UIAlertController(title: "Hold on a second!", message: "Please select a league before continuing.", preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
    
        alert.addAction(dismissAction)
        present(alert, animated: true , completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillLevelViewController = segue.destination as? SkillLevelViewController {
            skillLevelViewController.player = player
        }
    }

}
