//
//  ViewController.swift
//  RollTheDice
//
//  Created by Andrea on 07/11/2019.
//  Copyright © 2019 Andrea Peric. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImage = UIImageView()
    
    let diceNumberAray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDice0 = 0
    var randomDice1 = 0
    
   
    @IBOutlet weak var diceImage0: UIImageView!
    @IBOutlet weak var diceImage1: UIImageView!
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        updateDiceImage()
    }
    
    func updateDiceImage() {
        
        randomDice0 = Int.random(in: 0 ... 5)
        randomDice1 = Int.random(in: 0 ... 5)
        
        diceImage0.image = UIImage(named: diceNumberAray[randomDice0])
        diceImage1.image = UIImage(named: diceNumberAray[randomDice1])
        
        
        
    }
    
    
    
    func setBackground() {
        
        view.addSubview(backgroundImage)
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        backgroundImage.image = UIImage(named: "background")
        view.sendSubviewToBack(backgroundImage)
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setBackground()
    }


}

