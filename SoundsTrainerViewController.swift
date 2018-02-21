//
//  SoundsTrainerViewController.swift
//  SoundsTrainer
//
//  Created by Lorella Levantino on 18/02/2018.
//  Copyright © 2018 Lorella Levantino. All rights reserved.
//

import UIKit
import AVFoundation


class SoundsTrainerViewController: UIViewController, AVAudioPlayerDelegate {
    
    // VAR per il player del fonema /s/
    var buttonPlayer: AVAudioPlayer!
    // VAR per il player del fonema /ts/
    var buttonPlayerTwo: AVAudioPlayer!
    // VAR dello switch
    var switchIsOn: Bool = false
    
    // OUTLET dei singoli bottoni
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    
    // OUTLET della label che cambia a seconda del fonema selezionato
    @IBOutlet weak var fonemaSelezionato: UILabel!
    
    // OUTLET dell'oggetto animato
    @IBOutlet weak var movingObject: UIButton!
    
    // serie di FUNC per muovere il movingObject
    func moveRight(){
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseInOut, animations: {
            self.movingObject.frame.origin.x -= -220
        }, completion: nil)
    }
    
    func buttonPressedAgain() {
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear, animations: {
            self.movingObject.frame.origin.x -= 80
             self.movingObject.frame.origin.y = 0.5
        }, completion: nil)
    }
    
    func moveBottom() {
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseInOut, animations: {
            self.movingObject.frame.origin.y -= -270
            }, completion: nil)
    }
    
    func moveLeft() {
        UIView.animate(withDuration: 0.1, delay: 0,
                       options: .curveEaseInOut, animations: {
                        self.movingObject.frame.origin.x -= 220
        }, completion: nil)
    }
    
    
    
    // FUNC che cambia il fonema. Se lo switch è on, si attiva la func relativa al fonema /ts/, se off, si attiva la func relativa al fonema /s/
    @IBAction func changeSound(_ sender: UISwitch) {
        if sender.isOn == true {
            setUpAudioFilesTwo()
            fonemaSelezionato.text = "fonema /ts/"
            
        } else {
            setUpAudioFiles()
            fonemaSelezionato.text = "fonema /s/"
        }
        
        // associo la var allo stato dello switch per poterla riutilizzare dopo nei singoli buttons
        switchIsOn = sender.isOn
    }
    
    
    @IBAction func giocaDiNuovo(_ sender: UIButton) {
        restartGame()
        restartAnimation()
    }
    
    
    func restartAnimation() {
        self.movingObject.center.y = 129
        self.movingObject.center.x = 200
        
    }
        

    
    // FUNC che setta tutti i bottoni bloccati tranne il primo
    func restartGame() {
        
        buttonOne.isEnabled = true
        buttonTwo.isEnabled = false
        buttonThree.isEnabled = false
        buttonFour.isEnabled = false
        buttonFive.isEnabled = false
        buttonSix.isEnabled = false
        buttonSeven.isEnabled = false
        buttonEight.isEnabled = false
        restartAnimation()
        
        let birdOne = UIImage(named: "bird")
        movingObject.setImage(birdOne, for: .normal)
        
        
    }
    
    // FUNC per cambiare immagine quando l'uccellino va verso sinistra
    func birdOnTheLeft() {
        let birdLeft = UIImage(named: "birdLeft")
        movingObject.setImage(birdLeft, for: .normal)
    }
    
    
    // Di seguito, gli action di ciascun button
    @IBAction func firstButton(_ sender: UIButton) {
    
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        
     buttonOne.isEnabled = false
        
        buttonTwo.isEnabled = true
    moveRight()
        
        
    }
    
    @IBAction func secondButton(_ sender: UIButton) {
    
        
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        
        buttonTwo.isEnabled = false
        
        buttonThree.isEnabled = true
        moveRight()
    }
    
    
    @IBAction func thirdButton(_ sender: UIButton) {
        
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        
        buttonThree.isEnabled = false
        
  buttonFour.isEnabled = true
        moveRight()
        
    }
    
   
    
    @IBAction func fourthButton(_ sender: UIButton) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        buttonFour.isEnabled = false
        
        buttonFive.isEnabled = true
       moveBottom()
        birdOnTheLeft()

    }
    
    @IBAction func fifthButton(_ sender: UIButton) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        
        buttonFive.isEnabled = false
        
        buttonSix.isEnabled = true
        moveLeft()
        
    }
    
    
    @IBAction func sixthButton(_ sender: UIButton) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        
        buttonSix.isEnabled = false
        
        buttonSeven.isEnabled = true
        moveLeft()
    }
    
    
    @IBAction func seventhButton(_ sender: Any) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        buttonSeven.isEnabled = false
    
        buttonEight.isEnabled = true
        moveLeft()
        
    }
    
    @IBAction func eighthButton(_ sender: UIButton) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        
        buttonEight.isEnabled = false
        moveBottom()
        
        let birdTwo = UIImage(named: "bird2")
        movingObject.setImage(birdTwo, for: .normal)
    }
    
    
 
    
    
    
    
    // FUNC per settare il file audio del fonema /s/
    func setUpAudioFiles() {
        let soundFilePath = Bundle.main.path(forResource: "esseSpezzata", ofType: "m4a")
        print(soundFilePath)
        let soundFileURL = NSURL(fileURLWithPath: soundFilePath!)
        
        do {
            try buttonPlayer = AVAudioPlayer(contentsOf: soundFileURL as URL)
        } catch {
            print(error)
        }
        buttonPlayer.delegate = self
        
        buttonPlayer.numberOfLoops = 0
    }

    
    // FUNC per settare il file audio del fonema /ts/
    func setUpAudioFilesTwo() {
        let soundFilePath = Bundle.main.path(forResource: "affricataSorda", ofType: "m4a")
        print(soundFilePath)
        let soundFileURL = NSURL(fileURLWithPath: soundFilePath!)

        do {
            try buttonPlayerTwo = AVAudioPlayer(contentsOf: soundFileURL as URL)
        } catch {
            print(error)
        }
        buttonPlayerTwo.delegate = self

        buttonPlayerTwo.numberOfLoops = 0
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpAudioFiles()
        setUpAudioFilesTwo()
        
        buttonTwo.isEnabled = false
        buttonThree.isEnabled = false
        buttonFour.isEnabled = false
        buttonFive.isEnabled = false
        buttonSix.isEnabled = false
        buttonSeven.isEnabled = false
        buttonEight.isEnabled = false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
