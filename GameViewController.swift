//
//  ViewController.swift
//  ticTacToe
//
//  Created by FountainHead on 26/08/2019.
//  Copyright © 2019 FountainHead. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: UI
    @IBAction func touchButtonX(_ sender: UIButton) {
        makeTurn(withEmoji: "❌", on: sender)
        if let cellNumber = cells.firstIndex(of: sender) {
            print("cellNumber is \(cellNumber)")
        } else {
            print("cellNumber was not in cellNumber array")
        }
    }
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    var counter = 0
    
    //MARK: Action
    func makeTurn(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle != emoji {
            button.setTitle("❌", for: .normal)
            button.backgroundColor = .white
            counter += 1
            if counter == 3 {
                winnerLabel.text = "Winner is Player1!"
            } else {
                winnerLabel.text = "No winner yet"
            }
        } else {
            print("button already flipped")
        }
    }
    
    //MARK: Logic
        var gameCells = [2, 7, 6,
                         9, 5, 1,
                         4, 3, 8]
    
    @IBOutlet var cells: [UIButton]!
    
    

}

