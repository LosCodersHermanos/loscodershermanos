//
//  ViewController.swift
//  Snaker
//
//  Created by Lorella Levantino on 12/02/2018.
//  Copyright © 2018 Lorella Levantino. All rights reserved.
//

import UIKit
import AVFoundation

class SnakerViewController: UIViewController, AVAudioPlayerDelegate {
    
    
    
   
    @IBOutlet weak var snake: UIView!
    
    
    
    
    
    var snakePlayer: AVAudioPlayer!
    var playlist = [Int]()
    var currentItem = 0
    var numberOfTap = 0
    var readyForUser = false
    var level = 1
    
    
    
    var panGesture = UIPanGestureRecognizer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        panGesture = UIPanGestureRecognizer.init(target: self, action: #selector(viewDidDragged))
        
        snake.addGestureRecognizer(panGesture)
        
        
        setUpAudioFiles()
        animate(mushroom)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func setUpAudioFiles() {
        let soundFilePath = Bundle.main.path(forResource: "s sound", ofType: "m4a")
        print(soundFilePath)
        let soundFileURL = NSURL(fileURLWithPath: soundFilePath!)
        
        do {
            try snakePlayer = AVAudioPlayer(contentsOf: soundFileURL as URL)
        } catch {
            print(error)
        }
        snakePlayer.delegate = self
        
        snakePlayer.numberOfLoops = 0
    }
    
    // func
    
    
    
//    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
//        switch sender.state {
//        case .began:
//            snakePlayer.play()
//           snakePlayer.numberOfLoops = 1000
//
//        case .ended:
//            snakePlayer.stop()
//
//        default: break
//        }
//
//    }
    
    
    
    
    
    @IBOutlet weak var mushroom: UIImageView!
    func animate(_ image: UIImageView) {
        UIView.animate(withDuration: 5, delay: 0, options: .curveEaseIn, animations: {
            image.transform = CGAffineTransform(translationX: -100, y: 0)
        }) { (success: Bool) in
            image.transform = CGAffineTransform.identity
            self.animate(self.mushroom)
        }
    }
    
    
    
    
    @objc func viewDidDragged() {
        var newPoint = panGesture.location(in: self.view)
        if newPoint. {
        snakePlayer.play()
        } else {
            snakePlayer.stop()
        }
        
        
        
        func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
            return CGRect(x: x, y: y, width: width, height: height)
        }
        
        
        
       let newFrame = CGRectMake(newPoint.x, newPoint.y, snake.frame.size.width, snake.frame.size.height)
        
        snake.frame = newFrame
        

    }
    
    
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//
//
//        snakePlayer.play()
//        snakePlayer.numberOfLoops = 1000
//
//
//    }
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//
//
//            snakePlayer.stop()

//
//    }


    
    
    

}

