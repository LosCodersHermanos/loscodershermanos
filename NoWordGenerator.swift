//
//  NoWordGenerator.swift
//  loscodershermanos
//
//  Created by Il Gigis on 09/02/18.
//  Copyright © 2018 Luigi Scherillo. All rights reserved.
//

import UIKit

class NoWordGenerator: UIViewController {
    var characterNumber : Int = 0

    @IBOutlet weak var fonemaIniziale: UITextField!
    @IBOutlet weak var parolaGenerata: UILabel!
    
    @IBOutlet weak var wordLengthView: UILabel!
    @IBAction func wordLength(_ sender: UISlider) {
        characterNumber = Int(sender.value)
        wordLengthView.text = String(characterNumber)
    }
    @IBOutlet weak var phonemSwitch: UISwitch!
    //Imposto le lettere da usare
    let lettere = [ "r", "t", "p", "s", "d", "f", "g", "l", "z", "c", "v", "b", "n", "m"]
    let vocali = ["a", "e", "i", "o", "u"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

parolaGenerata.text = " "    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func generationStart(_ sender: Any) {

        let MAX : UInt32 = 13
        let random_number = Int(arc4random_uniform(MAX))
        let random_number2 = Int(arc4random_uniform(MAX))
        let random_number4 = Int(arc4random_uniform(MAX))
        let random_number6 = Int(arc4random_uniform(MAX))
        let random_number8 = Int(arc4random_uniform(MAX))
        
        let MAX1 : UInt32 = 5
        let random_number1 = Int(arc4random_uniform(MAX1))
        let random_number3 = Int(arc4random_uniform(MAX1))
        let random_number5 = Int(arc4random_uniform(MAX1))
        let random_number7 = Int(arc4random_uniform(MAX1))
        let random_number9 = Int(arc4random_uniform(MAX1))
        
        
        let l1 = lettere[random_number]
        let l2 = vocali[random_number1]
        let l3 = lettere[random_number2]
        let l4 = vocali[random_number3]
        let l5 = lettere[random_number4]
        let l6 = vocali[random_number5]
        let l7 = lettere[random_number6]
        let l8 = vocali[random_number7]
        let l9 = lettere[random_number8]
        let l10 = vocali[random_number9]
        
        let fChar = fonemaIniziale.text?.first
        let lastChar = fonemaIniziale.text?.last
        
        // var w = lunghezzaSlider.value
        
        if phonemSwitch.isOn {
            
            if vocali.contains("\(fChar!)"){
                if vocali.contains("\(lastChar!)"){
                    parolaGenerata.text = l5 + fonemaIniziale.text! + l1 + l2 + l3 + l4 + l2 + l7 + l8 + l9 + l10
                    
                } else {
                    parolaGenerata.text = l5 + fonemaIniziale.text! + l2 + l3 + l4 + l1 + l8 + l9 + l10 + l7
                    
                }
                
                
            } else {
                
                if vocali.contains("\(lastChar!)"){
                    
                    parolaGenerata.text = l5 + l6 + fonemaIniziale.text! + l1 + l2 + l3 + l4 + l7 + l8 + l9 + l10
                    
                } else {
                    parolaGenerata.text = l5 + l6 + fonemaIniziale.text! + l2 + l3 + l4 + l1 + l8 + l9 + l10 + l7
                    
                }
                
            }
            
        }else {
            
            if vocali.contains("\(lastChar!)"){
                parolaGenerata.text = fonemaIniziale.text! + l1 + l2 + l3 + l4 + l5 + l6 + l7 + l8 + l9 + l10
                
            } else {
                parolaGenerata.text = fonemaIniziale.text! + l2 + l3 + l4 + l1 + l6 + l7 + l8 + l9 + l10 + l5
                
            }
        }
        
        let str = parolaGenerata.text!
        let index = str.index(str.startIndex , offsetBy: characterNumber)
        let trimStr = str.substring(to: index)
        parolaGenerata.text = trimStr
        
        
        
    }
    
}
