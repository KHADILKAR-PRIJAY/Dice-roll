//
//  ViewController.swift
//  snake eye
//
//  Created by Prijay Khadilkar on 2022-06-16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceTwo: UIImageView!
    @IBOutlet var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    var diceList = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeDice()
    }
    
    func initializeDice() {
        dice1.image = UIImage(named: "dice1")
        diceTwo.image = UIImage(named: "dice1")
    }
    
    func rolling(){
        var diceTwoNumber = Int.random(in: 0...5)
        var diceOneNumber = Int.random(in: 0...5)
        
        dice1.image = UIImage(named: diceList[diceOneNumber])
        diceTwo.image = UIImage(named: diceList[diceTwoNumber])
        
        if(diceOneNumber == 5 && diceTwoNumber == 5){
            let alert = UIAlertController(title: "Snake eyes", message: "You've been swallowed!", preferredStyle: .alert)
            let okbtn = UIAlertAction(title: "ok", style: .default){_ in print("pressed")
            }
            alert.addAction(okbtn)
            self.show(alert, sender: nil)
            initializeDice()
        }
    }
    
    @IBAction func onRolldice(_ sender: UIButton) {
       rolling()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
       rolling()
    }
}

