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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
        if readyForUser{
            let button = sender as! UIButton
            switch button.tag {
            case 1:
                highLightButton(tag: 1)
                sound1Player.play()
                checkCorrectly(buttonPressed: 1)
                break
            case 2:
                highLightButton(tag: 2)
                sound2Player.play()
                checkCorrectly(buttonPressed: 2)
                break
            case 3:
                highLightButton(tag: 3)
                sound3Player.play()
                checkCorrectly(buttonPressed: 3)
                break
            case 4:
                highLightButton(tag: 4)
                sound4Player.play()
                checkCorrectly(buttonPressed: 4)
                break
            default:
                break
            }
        }

    }
    func checkCorrectly (buttonPressed:Int){
        if buttonPressed == playlist[numberOfTap]{
            if numberOfTap == playlist.count - 1 {
                
                let currentTime = DispatchTime.now()
                
                let deadline = DispatchTime(uptimeNanoseconds: currentTime.uptimeNanoseconds + 100000000)
                
                DispatchQueue.main.asyncAfter(deadline: deadline , execute: {
                    self.nextRound()
                    
                })
                return
            }
            numberOfTap += 1
        }else {
            resetGame()
        }
    }
    func resetGame(){
        level = 1
        readyForUser = false
        numberOfTap = 0
        currentItem = 0
        playlist = []
        disableButtons()
        label.text = "Game Over"
        playButton.isHidden = false
    }
    func nextRound () {
         level += 1
         label.text = " Livello \(level)"
        readyForUser = false
        numberOfTap = 0
        currentItem = 0
        let randomNumber = Int(arc4random_uniform(4) + 1)
        playlist.append(randomNumber)
        playNextItem()
        disableButtons()
    }
    
    @IBAction func startgame(_ sender: Any) {
        disableButtons()
        label.text = "Level 1"
       
        let randomNumber = Int(arc4random_uniform(4) + 1 )
        playlist.append(randomNumber)
         playNextItem()
        playButton.isHidden = true
//        playNextItem()
    }
    
        
        
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool )  {
            
            
            if currentItem <= playlist.count - 1 {
                playNextItem()
            } else {
                readyForUser = true
                resetButtonHighLight()
                enableButtons()
                
                
            }
        }
        func playNextItem () {
            let selectedItem = playlist[currentItem]
            
            switch selectedItem {
            case 1:
                highLightButton(tag: 0)
                sound1Player.play()
                break
            case 2:
                highLightButton(tag: 1)
                sound2Player.play()
                break
            case 3:
                highLightButton(tag: 2)
                sound3Player.play()
                break
            case 4:
                highLightButton(tag: 3)
                sound4Player.play()
                break
            default:
                break
            }
            currentItem += 1
        }
        func resetButtonHighLight(){
            soundButton[0].setImage(#imageLiteral(resourceName: "red"), for: .normal)
            soundButton[1].setImage(#imageLiteral(resourceName: "yellow"), for: .normal)
            soundButton[2].setImage(#imageLiteral(resourceName: "blue"), for: .normal)
            soundButton[3].setImage(#imageLiteral(resourceName: "green"), for: .normal)
        }
        func highLightButton(tag:Int ){
            switch tag {
                
            case 0:
            soundButton[0].setImage(#imageLiteral(resourceName: "redPressed"), for: .normal)
            case 1:
            soundButton[1].setImage(#imageLiteral(resourceName: "yellowPressed"), for: .normal)
            case 2:
            soundButton[2].setImage(#imageLiteral(resourceName: "bluePressed"), for: .normal)
            case 3:
            soundButton[3].setImage(#imageLiteral(resourceName: "greenPressed"), for: .normal)
            default:
                break
            }
//
//
//            switch tag {
//            case 1:
//                soundButton[0].setImage(#imageLiteral(resourceName: "redPressed"),for: .normal)
//                resetButtonHighLight()
//
//            case 2:
//                soundButton[1].setImage(#imageLiteral(resourceName: "yellowPressed"),for: .normal)
//                resetButtonHighLight()
//
//            case 3:
//                soundButton[2].setImage(#imageLiteral(resourceName: "bluePressed"),for: .normal)
//                resetButtonHighLight()
//
//            case 4:
//                soundButton[3].setImage(#imageLiteral(resourceName: "greenPressed"),for: .normal)
//                resetButtonHighLight()
//
//            default:
//                break
//            }
        }
    func disableButtons() {
        for button in soundButton {
            button.isUserInteractionEnabled = false
            
        }
    }
    func enableButtons () {
        for button in soundButton {
            button.isUserInteractionEnabled = true
            
    }
    }

}

