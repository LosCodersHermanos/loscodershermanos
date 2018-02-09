//
//  MemoSoundViewController.swift
//  loscodershermanos
//
//  Created by Il Gigis on 09/02/18.
//  Copyright © 2018 Luigi Scherillo. All rights reserved.
//

import UIKit
import AVFoundation
class MemoSoundViewController: UIViewController,AVAudioPlayerDelegate {
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet var soundButton: [UIButton]!
    @IBOutlet weak var label: UILabel!
    
    var sound1Player :AVAudioPlayer!
    var sound2Player :AVAudioPlayer!
    var sound3Player :AVAudioPlayer!
    var sound4Player :AVAudioPlayer!
    
    var playlist = [Int]()
    var currentItem = 0
    var numberOfTap = 0
    var readyForUser = false
    var level = 1
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAudioFiles()
    }
    func setUpAudioFiles (){
     
        let soundFilePath = Bundle.main.path(forResource: "1", ofType: "wav")
        let soundFileURL = NSURL(fileURLWithPath: soundFilePath!)
        
        let soundFilePath2 = Bundle.main.path(forResource: "2", ofType: "wav")
        let soundFileURL2 = NSURL(fileURLWithPath: soundFilePath2!)
        
        let soundFilePath3 = Bundle.main.path(forResource: "3", ofType: "wav")
        let soundFileURL3 = NSURL(fileURLWithPath: soundFilePath3!)
        
        let soundFilePath4 = Bundle.main.path(forResource: "4", ofType: "wav")
        let soundFileURL4 = NSURL(fileURLWithPath: soundFilePath4!)
        
        do {
            try sound1Player = AVAudioPlayer(contentsOf: soundFileURL as URL)
            try sound2Player = AVAudioPlayer(contentsOf: soundFileURL2 as URL)
            try sound3Player = AVAudioPlayer(contentsOf: soundFileURL3 as URL)
            try sound4Player = AVAudioPlayer(contentsOf: soundFileURL4 as URL)
        } catch{
             print(error)
        }
        sound1Player.delegate = self
        sound2Player.delegate = self
        sound3Player.delegate = self
        sound4Player.delegate = self
        
        sound1Player.numberOfLoops = 0
        sound2Player.numberOfLoops = 0
        sound3Player.numberOfLoops = 0
        sound4Player.numberOfLoops = 0
        
    }
    
    @IBAction func soundButtonPressed(_ sender: Any) {
      let button = sender as! UIButton
        switch button.tag {
        case 1:
            sound1Player.play()
            break
        case 2:
            sound2Player.play()
            break
        case 3:
            sound3Player.play()
            break
        case 4:
            sound4Player.play()
            break
        default:
            break
        }
        
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
