//
//  SkillLevelViewController.swift
//  Swoosh
//
//  Created by Johnny Young on 7/12/18.
//  Copyright © 2018 Johnny Young. All rights reserved.
//

import UIKit

class SkillLevelViewController: UIViewController {

    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let selectedLeague = player.desiredLeague {
            print(selectedLeague)
        }
    }


    



}
