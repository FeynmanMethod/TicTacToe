//
//  StartGameViewController.swift
//  ticTacToe
//
//  Created by FountainHead on 26/08/2019.
//  Copyright © 2019 FountainHead. All rights reserved.
//

import UIKit

class StartGameViewController: UIViewController {
    
    @IBAction func playerX(_ sender: UIButton) {
    }
    
    @IBAction func playerO(_ sender: UIButton) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller == segue.destination as? GameViewController, segue.identifier == "ShowGameVC" {
            controller.player = playerX.currentTitle
        }
    }
    
}
