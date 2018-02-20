//
//  LettereGameViewController.swift
//  loscodershermanos
//
//  Created by Il Gigis on 19/02/18.
//  Copyright © 2018 Luigi Scherillo. All rights reserved.
//

import UIKit
import AVFoundation

class LettereGameViewController: UIViewController, LetteraViewDelegate {
    func outsideTouch() {
        print("SeiFuori")
        Splay.stop()
    }
    
    
    func beganTouch() {
        print("Began from Here")
        Splay.play()
    }
    
    func movedTouch() {
        
        Splay.play()
    }
    
    func endedTouch() {
        Splay.stop()
    }

    @IBOutlet weak var lettera: ToccaLaLetteraViewController!
   public var Splay: AVAudioPlayer!
    var panGesture = UIPanGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        lettera.touchDelegate = self
        setUpAudioFiles()
    }
    func setUpAudioFiles() {
        let soundFilePath = Bundle.main.path(forResource: "s sound", ofType: "m4a")
        print(soundFilePath)
        let soundFileURL = NSURL(fileURLWithPath: soundFilePath!)
        
        do {
            try Splay = AVAudioPlayer(contentsOf: soundFileURL as URL)
        } catch {
            print(error)
        }
        if let delegate = self.Splay{
        delegate.play()
        }
        Splay.numberOfLoops = 0
    }


    
}
