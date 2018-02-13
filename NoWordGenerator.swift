//
//  NoWordGenerator.swift
//  loscodershermanos
//
//  Created by Il Gigis on 09/02/18.
//  Copyright © 2018 Luigi Scherillo. All rights reserved.
//

import UIKit

class NoWordGenerator: UIViewController {
    var characterNumber : Int = 3
    var position = 1
    var fonemaInizialeLegth = 0
    
    @IBOutlet weak var fonemaIniziale: UITextField!
    @IBOutlet weak var parolaGenerata: UILabel!
    
    @IBOutlet weak var wordLengthView: UILabel!
    
    @IBAction func wordLegthStepper(_ sender: UIStepper) {
        characterNumber = Int(sender.value)
        wordLengthView.text = String(characterNumber)
    }
    
    @IBOutlet weak var legthStepper: UIStepper!
    
    
    //Imposto le lettere da usare
    let lettere = [ "r", "t", "p", "s", "d", "f", "g", "l", "z", "c", "v", "b", "n", "m"]
    let vocali = ["a", "e", "i", "o", "u"]
    // Controllo parole conosciute
    
    @IBAction func positionSlider(_ sender: UISlider) {
        position = Int(sender.value)
        
        
        if position == 1{
            inizioLabel.textColor = UIColor.blue
            centroLabel.textColor = UIColor.black
            fineLabel.textColor = UIColor.black
        } else if position == 2 {
            inizioLabel.textColor = UIColor.black
            centroLabel.textColor = UIColor.blue
            fineLabel.textColor = UIColor.black
        } else {
            inizioLabel.textColor = UIColor.black
            centroLabel.textColor = UIColor.black
            fineLabel.textColor = UIColor.blue
        }
        
        
    }
    
    @IBOutlet weak var inizioLabel: UILabel!
    @IBOutlet weak var centroLabel: UILabel!
    @IBOutlet weak var fineLabel: UILabel!
    
    
    @IBAction func playButton(_ sender: Any) {
        
        if parolaGenerata.text != "" {
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var showNoWord = segue.destination as! ShowNoWordsViewController
        
        showNoWord.word = parolaGenerata.text!
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        inizioLabel.textColor = UIColor.blue
        
        parolaGenerata.text = " "
        
        
        //characterNumber = Int(legthStepper.value)
        //fonemaInizialeLegth = (fonemaIniziale.text?.count)!
        print("\(fonemaInizialeLegth)aa")
        
        print("AA \(characterNumber)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func generationStart(_ sender: Any) {
        
            generazione()
        
           // generationAndCheck()
            
        
        
        // var w = lunghezzaSlider.value
        
    }
    func generazione()-> String {
        
       fonemaInizialeLegth = (fonemaIniziale.text?.count)!
        if  (fonemaIniziale.text?.isEmpty)! {
            let alert = UIAlertController(title: "Attenzione", message: "Inserisci un fonema" ,preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK" , style: .default)
            present(alert, animated: true)
            alert.addAction(okAction)
            
            
            
        } else {
            
            if  fonemaInizialeLegth == characterNumber  {
                let alert = UIAlertController(title: "Attenzione", message: "Controlla la lunghezza della parola" ,preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK" , style: .default)
                present(alert, animated: true)
                alert.addAction(okAction)
            } else {
        
        
                
                
        
            let MAX : UInt32 = 13
            let random_number1 = Int(arc4random_uniform(MAX))
            let random_number3 = Int(arc4random_uniform(MAX))
            let random_number5 = Int(arc4random_uniform(MAX))
            let random_number7 = Int(arc4random_uniform(MAX))
            let random_number9 = Int(arc4random_uniform(MAX))
            let random_number11 = Int(arc4random_uniform(MAX))
            
            let MAX1 : UInt32 = 5
            let random_number2 = Int(arc4random_uniform(MAX1))
            let random_number4 = Int(arc4random_uniform(MAX1))
            let random_number6 = Int(arc4random_uniform(MAX1))
            let random_number8 = Int(arc4random_uniform(MAX1))
            let random_number10 = Int(arc4random_uniform(MAX1))
            let random_number12 = Int(arc4random_uniform(MAX1))
            
            
            let l2 = vocali[random_number2]
            let l4 = vocali[random_number4]
            let l6 = vocali[random_number6]
            let l8 = vocali[random_number8]
            let l10 = vocali[random_number10]
            let l12 = vocali[random_number12]
            
            let l1 = lettere[random_number1]
            let l3 = lettere[random_number3]
            let l5 = lettere[random_number5]
            let l7 = lettere[random_number7]
            let l9 = lettere[random_number9]
            let l11 = lettere[random_number11]
            
            
            
            fonemaInizialeLegth = (fonemaIniziale.text?.count)!
            let fChar = fonemaIniziale.text?.first
            let lastChar = fonemaIniziale.text?.last
            
          
            
            
            
            if position == 2 {
                
                
                
                //controlla se il fonema inserito è lungo  uno o due caratteri in meno alla lunghezza della parola lo centra meglio
                
                
                if fonemaInizialeLegth == characterNumber - 1 || fonemaInizialeLegth == characterNumber - 2 {
                
                    
                    
                    if vocali.contains("\(fChar!)"){
                        if vocali.contains("\(lastChar!)"){
                            parolaGenerata.text = l11 + fonemaIniziale.text! + l1 + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10
                            
                        } else {
                            parolaGenerata.text = l11 + fonemaIniziale.text! + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10 + l1
                            
                        }
                        
                        
                    } else {
                        
                        if vocali.contains("\(lastChar!)"){
                            
                            
                            
                            parolaGenerata.text = l12 + fonemaIniziale.text! + l1 + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10
                            
                        } else {
                            parolaGenerata.text = l12 + fonemaIniziale.text! + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10 + l1
                            
                        }
                        
                    }
                    
                } else {
                    
                    
                
                //fine controllo
                    
                    
                if vocali.contains("\(fChar!)"){
                    if vocali.contains("\(lastChar!)"){
                        parolaGenerata.text = l11 + fonemaIniziale.text! + l1 + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10
                        
                    } else {
                        parolaGenerata.text = l11 + fonemaIniziale.text! + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10 + l1
                        
                    }
                    
                    
                } else {
                    
                    if vocali.contains("\(lastChar!)"){
                        
                        
                        
                        parolaGenerata.text = l11 + l12 + fonemaIniziale.text! + l1 + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10
                        
                    } else {
                        parolaGenerata.text = l11 + l12 + fonemaIniziale.text! + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10 + l1
                        
                    }
                    
                }
                }
                
            }else if position == 1 {
                
                if vocali.contains("\(lastChar!)"){
                    parolaGenerata.text = fonemaIniziale.text! + l1 + l2 + l3 + l4 + l5 + l6 + l7 + l8 + l9 + l10
                    
                } else {
                    parolaGenerata.text = fonemaIniziale.text! + l2 + l3 + l4 + l5 + l6 + l7 + l8 + l9 + l10 + l1
                    
                }
            } else {
                
                if vocali.contains("\(fChar!)"){
                    parolaGenerata.text = l1 + l2 + l3 + l4 + l5 + l6 + l7 + l8 + l9 + l10 + l11 + fonemaIniziale.text!
                    
                } else {
                    parolaGenerata.text =  l1 + l2 + l3 + l4 + l5 + l6 + l7 + l8 + l9 + l10 + fonemaIniziale.text!
                    
                }
                
            }
            generationAndCheck()
       //}
            }}
        return parolaGenerata.text!
        
    }
    func generationAndCheck() -> String  {
        let str = parolaGenerata.text!
        let index = str.index(str.startIndex , offsetBy: characterNumber)
        var trimStr = str.substring(to: index)
        
        
        var parole: String = ""
        if let filepath = Bundle.main.path(forResource: "dizionario", ofType: "txt") {
            do {
                parole = try String(contentsOfFile: filepath)
                print(trimStr)
            } catch {
                // contents could not be loaded
                //                    }
                //                    let test: [String] = parole.components(separatedBy: "\n")
                //                    guard test.contains(trimStr) else {
                //                        parolaGenerata.isHidden = false
                //                        parolaGenerata.text = trimStr
                //                        return trimStr
                //                    }
                //                    trimStr = ""
                while parole.contains(trimStr){
                    print(trimStr)
                    trimStr = " "
                    
                    self.generazione()
                    self.generationAndCheck()
                    
                    //                                           let newTrimStr:String
                    //                                           newTrimStr = generazione()
                    //                                            parolaGenerata.text = newTrimStr
                    
                    parolaGenerata.text = trimStr
                    parolaGenerata.isHidden = true
                    
                }
            }
            parolaGenerata.text = trimStr
            return trimStr
        }
        return trimStr
    }
    
}

