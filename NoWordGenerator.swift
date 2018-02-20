//
//  NoWordGenerator.swift
//  loscodershermanos
//
//  Created by Il Gigis on 09/02/18.
//  Copyright © 2018 Luigi Scherillo. All rights reserved.
//

import UIKit

class NoWordGenerator: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
   
    @IBOutlet weak var wordsTableView: UITableView!
    var differenza: Int = 0
    var characterNumber : Int = 3
    var position = 1
    var fonemaInizialeLegth = 0
    var totale : Int = 0
    var wordsNumber: Int = 1
    var chosenWords: [String] = []
    var counter = 0
    var chosenWordsToShow: [String] = []

    @IBOutlet weak var fonemaIniziale: UITextField!
    @IBOutlet weak var parolaGenerata: UILabel!
    
    @IBOutlet weak var wordLengthView: UILabel!
    
   // @IBOutlet weak var wordsNumberLabel: UILabel!
    
    @IBAction func wordLegthStepper(_ sender: UIStepper) {
        characterNumber = Int(sender.value)
        wordLengthView.text = String(characterNumber)
    }
    
    @IBOutlet weak var legthStepper: UIStepper!
    
    /*@IBAction func wordsNumberStepper(_ sender: UIStepper) {
        wordsNumber = Int(sender.value)
        wordsNumberLabel.text = String(wordsNumber)
    }*/
    
    
    
    @IBAction func scegliButton(_ sender: UIButton) {
        
       /* var h = String()
        print("a \n a")
        print(counter)
        if counter < wordsNumber {
            chosenWordsToShow.append(parolaGenerata.text!)
            chosenWords.append(parolaGenerata.text!)
            chosenWords.append(", ")
            print("aaaa \(chosenWords)")
            
            for r in 0...counter * 2  {
                print(chosenWords[r])
                h = h + chosenWords[r]
                
            }
            counter = counter + 1
        }*/
        
        
        //showChosenWords.text = h
        
        chosenWordsToShow.append(parolaGenerata.text!)
        let indexPath = IndexPath(row: chosenWordsToShow.count - 1, section: 0)
        wordsTableView.beginUpdates()
        wordsTableView.insertRows(at: [indexPath], with: .automatic)
        wordsTableView.endUpdates()
    }
    
    
    //Imposto le lettere da usare
    let lettere = [ "r", "t", "p", "s", "d", "f", "g", "l", "z", "c", "v", "b", "n", "m"]
    let vocali = ["a", "e", "i", "o", "u"]
    // Controllo parole conosciute
    
 
    
    
    
    
    @IBOutlet weak var positionContoller: UISegmentedControl!
    
    @IBAction func changePositionController(_ sender: UISegmentedControl) {
        
        if positionContoller.selectedSegmentIndex == 0 {
            position = 1
        } else if positionContoller.selectedSegmentIndex == 1 {
            position = 2
        } else {
            position = 3
        }
    }
    
    
    
    
    
    @IBAction func playButton(_ sender: Any) {
        /*var x = chosenWordsToShow.count
        print(x)
        
        print("PAROLE \(chosenWordsToShow)")
        for i in 0...x - 1 {
            writePList(value: chosenWordsToShow[i])
            print("CONTEN\(contentsOfFile())")
        }*/
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if chosenWordsToShow.isEmpty == false {
        var showNoWord = segue.destination as! ShowNoWordsViewController
        //var count = segue.destination as! ShowNoWordsViewController
        //showNoWord.word = parolaGenerata.text!
        showNoWord.words = chosenWordsToShow
        //count.contatore = counter
    }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if chosenWordsToShow.isEmpty {
            let alert = UIAlertController(title: "Attenzione", message: "Genera una parola" ,preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK" , style: .default)
            present(alert, animated: true)
            alert.addAction(okAction)
            
            return false
        }else{
            return true
        }
    }
    
    
    
/*
    func writePList(value: String) {
        
        let resourcePath = Bundle.main.path(forResource: "noWordsGenerator", ofType: "plist")
        let data: NSArray = [value] as NSArray
        data.write(toFile: resourcePath!, atomically: false)
        
    }
    
    
    func contentsOfFile() -> [String] {
        
        let resourcePath = Bundle.main.path(forResource: "noWordsGenerator", ofType: "plist")
        let contents = NSArray(contentsOfFile: resourcePath!) as? [String]
        return contents!
        
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        parolaGenerata.text = " "
        //characterNumber = Int(legthStepper.value)
        //fonemaInizialeLegth = (fonemaIniziale.text?.count)!
        print("\(fonemaInizialeLegth)aa")
        print("AA \(characterNumber)")
        
        wordsTableView.isEditing = !wordsTableView.isEditing
        //contentsOfFile()
        
        /*
        var x = contentsOfFile().count
        print(x)
        
        //print("PAROLE \(contentsOfFile())")
        for i in 0...x - 1 {
            chosenWordsToShow[i] = contentsOfFile()[i]
            print("CONTEN\(contentsOfFile())")
        }*/
    
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (chosenWordsToShow.count)
        print(chosenWordsToShow.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wordCell", for: indexPath) as! noWordGeneratorTableViewCell
        cell.wordLabel.text = chosenWordsToShow[indexPath.row]
        print(" parola \(chosenWordsToShow[indexPath.row])")
        
        return (cell)
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if ( editingStyle == .delete) {
            chosenWordsToShow.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
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
            
            
                func inizioVocaleInizio() {
                    parolaGenerata.text = fonemaIniziale.text! + l1 + l2 + l3 + l4 + l5 + l6 + l7 + l8 + l9
                    fonemaIniziale.textColor = UIColor.red
                    let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                    print(tot)

                    totale = tot
                }
            
            
                func inizioConsonanteInizio(){
                    parolaGenerata.text = fonemaIniziale.text! + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10
fonemaIniziale.textColor = UIColor.red
                    let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                    print(tot)

                    totale = tot
                }
            
            
            func inizioVocaleFineVocaleCentro(){
                parolaGenerata.text = l12 + l1 + fonemaIniziale.text! + l3 + l4 + l5 + l6 + l7 + l8 + l9
                fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)

                totale = tot
            }
            
            
            func inizioVocaleFineConsonanteCentro(){
                parolaGenerata.text = l12 + l1 + fonemaIniziale.text! + l2 + l3 + l4 + l5 + l6 + l7 + l8
                fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)
                
                totale = tot
            }
            
            
            func inizioConsonanteFineVocaleCentro(){
                parolaGenerata.text = l11 + l2 + fonemaIniziale.text! + l3 +  l4 + l5 + l6 + l7 + l8 + l9
                fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)
                
                totale = tot
            }
            
            
            func inizioConsonanteFineConsonanteCentro(){
                parolaGenerata.text = l11 + l2 + fonemaIniziale.text! + l4 + l5 + l6 + l7 + l8 + l9 + l10
fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)

                totale = tot
            }
            
            
            
            // funzioni che centra no meglio la parola se il fonema è di lunghezza vicino alla lunghezza della parola
            
            
            func inizioVocaleFineVocaleCentroCentrata(){
                parolaGenerata.text = l1 + fonemaIniziale.text! + l3 + l4 + l5 + l6 + l7 + l8 + l9
                fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)
                
                totale = tot
            }
            
            
            func inizioVocaleFineConsonanteCentroCentrata(){
                parolaGenerata.text = l1 + fonemaIniziale.text! + l2 + l3 + l4 + l5 + l6 + l7 + l8
                fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)
                
                totale = tot
            }
            
            
            func inizioConsonanteFineVocaleCentroCentrata(){
                parolaGenerata.text = l2 + fonemaIniziale.text! + l3 +  l4 + l5 + l6 + l7 + l8 + l9
                fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)
                
                totale = tot
            }
            
            
            func inizioConsonanteFineConsonanteCentroCentrata(){
                parolaGenerata.text = l2 + fonemaIniziale.text! + l4 + l5 + l6 + l7 + l8 + l9 + l10
                fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)
                
                totale = tot
            }
            
            
            //fine funzioni
            
            
            func inizioVocaleFine(){
                parolaGenerata.text = l1 + l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + fonemaIniziale.text!
fonemaIniziale.textColor = UIColor.red
                let tot = (parolaGenerata.text?.count)! + fonemaInizialeLegth
                print(tot)
                totale = tot
            }
            
            
            func inizioConsonanteFine(){
                parolaGenerata.text =  l2 + l3 +  l4 + l5 + l6 + l7 + l8 + l9 + l10 + fonemaIniziale.text!
                
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
                            inizioVocaleFineVocaleCentroCentrata()
                            generationCentro()
                        } else {
                            inizioVocaleFineConsonanteCentroCentrata()
                            generationCentro()
                        }
                    } else {
                        
                        if vocali.contains("\(lastChar!)"){
                            inizioConsonanteFineVocaleCentroCentrata()
                            generationCentro()
                        } else {
                            inizioConsonanteFineConsonanteCentroCentrata()
                            generationCentro()
                        }
                        
                    }
                    
                    //fine controllo
                    
                } else {
                if vocali.contains("\(fChar!)"){
                    if vocali.contains("\(lastChar!)"){
                        inizioVocaleFineVocaleCentro()
                        generationCentro()

//                        generationAndCheck()
                    } else {
                        inizioVocaleFineConsonanteCentro()
                        generationIniziale()

//                        generationAndCheck()
                    }
                } else {
                    if vocali.contains("\(lastChar!)"){
                        inizioConsonanteFineVocaleCentro()
                        generationCentro()

//                        generationAndCheck()
                    } else {
                        inizioConsonanteFineConsonanteCentro()
                        generationCentro()

//                        generationAndCheck()
                    }
                }
                }
            }else if position == 1 {
                if vocali.contains("\(lastChar!)"){
                    inizioVocaleInizio()
                    generationIniziale()

//                    generationAndCheck()
                } else {
                  inizioConsonanteInizio()
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
            }
            
        }
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

