//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var square1: UIView!
    
    @IBOutlet weak var square2: UIView!
    
    @IBOutlet weak var square3: UIView!
    
    @IBOutlet weak var square4: UIView!
    
    @IBOutlet weak var square5: UIView!
    
    @IBOutlet weak var square6: UIView!
    
    @IBOutlet weak var square7: UIView!
    
    @IBOutlet weak var red: UILabel!

    @IBOutlet weak var orange: UILabel!
    
    @IBOutlet weak var yellow: UILabel!
    
    @IBOutlet weak var green: UILabel!
    
    @IBOutlet weak var blue: UILabel!
    
    @IBOutlet weak var purple: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square1.isHidden = true
        square2.isHidden = true
        square3.isHidden = true
        square4.isHidden = true
        square5.isHidden = true
        square6.isHidden = true
        square7.isHidden = true
        red.isHidden = true
        orange.isHidden = true
        yellow.isHidden = true
        green.isHidden = true
        blue.isHidden = true
        purple.isHidden = true    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        func randomDiceRoll() -> Int {
            return Int(arc4random_uniform(6) + 1)
        }
        
        
        func rearrangeDie(roll:Int) -> Int {
            if roll == 1 {
                square1.isHidden = true
                square2.isHidden = true
                square3.isHidden = true
                square4.isHidden = false
                square5.isHidden = true
                square6.isHidden = true
                square7.isHidden = true
            } else if roll == 2 {
                square1.isHidden = false
                square2.isHidden = true
                square3.isHidden = true
                square4.isHidden = true
                square5.isHidden = true
                square6.isHidden = true
                square7.isHidden = false
            } else if roll == 3 {
                square1.isHidden = false
                square2.isHidden = true
                square3.isHidden = true
                square4.isHidden = false
                square5.isHidden = true
                square6.isHidden = true
                square7.isHidden = false
            } else if roll == 4 {
                square1.isHidden = false
                square2.isHidden = true
                square3.isHidden = false
                square4.isHidden = true
                square5.isHidden = false
                square6.isHidden = true
                square7.isHidden = false
            } else if roll == 5 {
                square1.isHidden = false
                square2.isHidden = true
                square3.isHidden = false
                square4.isHidden = false
                square5.isHidden = false
                square6.isHidden = true
                square7.isHidden = false
            } else if roll == 6 {
                square1.isHidden = false
                square2.isHidden = false
                square3.isHidden = false
                square4.isHidden = true
                square5.isHidden = false
                square6.isHidden = false
                square7.isHidden = false
            }; return(roll)
        }
        
        func updateLabelsWithRoll(number:Int) {
            let diceRoll = String(number)
            if red.isHidden {
                red.text = diceRoll
                red.isHidden = false
            } else if orange.isHidden {
                orange.text = diceRoll
                orange.isHidden = false
            } else if yellow.isHidden {
                yellow.text = diceRoll
                yellow.isHidden = false
            } else if green.isHidden {
                green.text = diceRoll
                green.isHidden = false
            } else if blue.isHidden {
                blue.text = diceRoll
                blue.isHidden = false
            } else if purple.isHidden {
                purple.text = diceRoll
                purple.isHidden = false
            } else {
                red.isHidden = true
                orange.isHidden = true
                yellow.isHidden = true
                green.isHidden = true
                blue.isHidden = true
                purple.isHidden = true
            }
        }
        
        updateLabelsWithRoll(number: rearrangeDie(roll:randomDiceRoll()))
    }

}
