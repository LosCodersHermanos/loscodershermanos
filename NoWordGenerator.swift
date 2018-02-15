//
//  NoWordGenerator.swift
//  loscodershermanos
//
//  Created by Il Gigis on 09/02/18.
//  Copyright © 2018 Luigi Scherillo. All rights reserved.
//

import UIKit

class NoWordGenerator: UIViewController {
    var differenza: Int = 0
    var characterNumber : Int = 3
    var position = 1
    var fonemaInizialeLegth = 0
    var totale : Int = 0

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
        
        if parolaGenerata.text! != "" {
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

    }
    func generazione()-> String {
        
       fonemaInizialeLegth = (fonemaIniziale.text?.count)!
        if  (fonemaIniziale.text?.isEmpty)! {
            let alert = UIAlertController(title: "Attenzione", message: "Inserisci un fonema" ,preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK" , style: .default)
            present(alert, animated: true)
            alert.addAction(okAction)
        } else {            if  fonemaInizialeLegth == characterNumber  {
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
                func inizioVocale() {
                    parolaGenerata.text = fonemaIniziale.text! + l1 + l2 + l3 + l4 + l5 + l6 + l7 + l8 + l9
                    fonemaIniziale.textColor = UIColor.red
                    let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                    print(tot)

                    totale = tot
                }
                func inizioConsonante (){
                    parolaGenerata.text = fonemaIniziale.text! + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10
fonemaIniziale.textColor = UIColor.red
                    let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                    print(tot)

                    totale = tot

                }
            func inizioVocaleCentro(){
                parolaGenerata.text = l11 + l1 + fonemaIniziale.text!  + l2 + l3 + l4 + l5 + l6 + l7 + l8
                fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)

                totale = tot

            }
            func inizioConsonanteCentro(){
                parolaGenerata.text = l11 + l2 + fonemaIniziale.text! + l3 +  l4 + l5  + l6 + l7 + l8 + l9
fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)

                totale = tot

            }
            func inizioVocaleFine(){
                parolaGenerata.text = l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10 + fonemaIniziale.text!
fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)
                totale = tot

            }
            func inizioConsonanteFine(){
                parolaGenerata.text =  l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l11 + fonemaIniziale.text!
                
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)

                totale = tot

fonemaIniziale.textColor = UIColor.red
            }
            if position == 2 {
                //controlla se il fonema inserito è lungo  uno o due caratteri in meno alla lunghezza della parola lo centra meglio
                if fonemaInizialeLegth == characterNumber - 1 || fonemaInizialeLegth == characterNumber - 2 {
                    if vocali.contains("\(fChar!)"){
                        if vocali.contains("\(lastChar!)"){
                            inizioVocaleCentro()
                            generationCentro()
                        } else {
                            inizioConsonanteCentro()
                            generationCentro()
                        }
                    } else {
                        
                        if vocali.contains("\(lastChar!)"){
                            inizioVocaleCentro()
                            generationCentro()
                        } else {
                            inizioConsonanteCentro()
                            generationCentro()
                        }
                        
                    }
                    
                } else {
                //fine controllo
                if vocali.contains("\(fChar!)"){
                    if vocali.contains("\(lastChar!)"){
                        inizioVocaleCentro()
                        generationCentro()

//                        generationAndCheck()
                    } else {
                        inizioConsonanteCentro()
                        generationIniziale()

//                        generationAndCheck()
                    }
                } else {
                    if vocali.contains("\(lastChar!)"){
                        inizioVocaleCentro()
                        generationCentro()

//                        generationAndCheck()
                    } else {
                        inizioConsonanteCentro()
                        generationCentro()

//                        generationAndCheck()
                    }
                }
                }
            }else if position == 1 {
                if vocali.contains("\(lastChar!)"){
                    inizioVocale()
                    generationIniziale()

//                    generationAndCheck()
                } else {
                  inizioConsonante()
                    generationIniziale()

//                    generationAndCheck()
                }
            } else {
                if vocali.contains("\(fChar!)"){
                    inizioVocaleFine()
                    generationFinale ()
                } else {
                    inizioConsonanteFine()
                    generationFinale ()
                }
                
            }
            }}
        return parolaGenerata.text!
    }
    func generationFinale (){
//        Questo serve nei casi in cui la generazione debba esser fatta con il fonema alla fine.
        differenza = (totale) - characterNumber - fonemaInizialeLegth
        print("La differenza è di: " , differenza)

        parolaGenerata.text?.removeFirst(differenza)
    }
    func generationIniziale() {
           differenza = (totale) - characterNumber - fonemaInizialeLegth
        print("La differenza è di: " , differenza)
        parolaGenerata.text?.removeLast(differenza)
    }
    func generationCentro() {
        differenza = (totale ) - characterNumber - fonemaInizialeLegth
        print("La differenza è di: " , differenza)

        parolaGenerata.text?.removeLast(differenza)
    }
}

