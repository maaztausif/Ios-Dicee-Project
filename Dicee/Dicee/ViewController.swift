//
//  ViewController.swift
//  Dicee
//
//  Created by maJor on 08/02/2020.
//  Copyright © 2020 maJor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    var randomDIce1:Int = 0
    var randomDice2:Int = 0
    var diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randD()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: Any) {
        randD()
    }
    func randD(){
        randomDIce1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        diceImage1.image = UIImage(named: diceArray[randomDIce1])
        diceImage2.image = UIImage(named: diceArray[randomDice2])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randD()
    }
}

