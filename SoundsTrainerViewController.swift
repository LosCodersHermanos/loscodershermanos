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
    
    
    // TO DO: BISOGNA ANCORA BLOCCARE I BOTTONI IN MODO DA SBLOCCARLI AD OGNI TAP DEL BOTTONE PRECEDENTE (COSì DA CREARE UN PERCORSO OBBLIGATO)
    
    
    
    // VAR per il player del fonema /s/
    var buttonPlayer: AVAudioPlayer!
    //VAR per il player del fonema /ts/
    var buttonPlayerTwo: AVAudioPlayer!
    // VAR dello switch
    var switchIsOn: Bool = false
    
   
    
    
    // OUTLET della label che cambia a seconda del fonema selezionato
    @IBOutlet weak var fonemaSelezionato: UILabel!
    
    
    
    // FUNC che cambia il fonema. Se lo switch è on, mi si attiva la func relativa al fonema /ts/, se off, si attiva la func relativa al fonema /s/
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
    
    
    // Di seguito, gli outlet di ciascun button
    @IBAction func firstButton(_ sender: UIButton) {
       
        
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        
      
        
    }
    
    @IBAction func secondButton(_ sender: UIButton) {
       
        
        
    
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
        
        
        
//        var disableMyButton = sender as? UIButton
//        disableMyButton?.isEnabled = false
        
    }
    
    
    @IBAction func thirdButton(_ sender: UIButton) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
    }
    
   
    
    @IBAction func fourthButton(_ sender: UIButton) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
    }
    
    @IBAction func fifthButton(_ sender: UIButton) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
    }
    
    
    @IBAction func sixthButton(_ sender: UIButton) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
    }
    
    
    @IBAction func seventhButton(_ sender: Any) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
    }
    
    @IBAction func eighthButton(_ sender: UIButton) {
        if switchIsOn == true {
            buttonPlayerTwo.play()
        } else {
            buttonPlayer.play()
        }
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
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
