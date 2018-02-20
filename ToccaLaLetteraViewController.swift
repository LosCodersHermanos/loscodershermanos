//
//  ToccaLaLetteraViewController.swift
//  loscodershermanos
//
//  Created by Il Gigis on 19/02/18.
//  Copyright © 2018 Luigi Scherillo. All rights reserved.
//

import UIKit
protocol LetteraViewDelegate {
    func beganTouch()
    func movedTouch()
    func endedTouch()
    func outsideTouch()
}
class ToccaLaLetteraViewController: UIView {

    var touchDelegate : LetteraViewDelegate?
//    @IBOutlet weak var lettera: ToccaLaLetteraViewController!
    
    override func draw(_ rect: CGRect){
        Sfattabene.drawS()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        let location = touch.location(in: self)
        if Sfattabene.bezierPath.contains(location){
            print("location")
            if let delegate = self.touchDelegate{
                delegate.beganTouch()
            }
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        let location = touch.location(in: self)
        if Sfattabene.bezierPath.contains(location){
            print("moved Location")
            if let delegate = self.touchDelegate{
                delegate.movedTouch()
            }
        } else {
            if let delegate = self.touchDelegate{
                delegate.outsideTouch()
            }
        }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        let location = touch.location(in: self)
        if Sfattabene.bezierPath.contains(location){
            print("Ended Location")
            if let delegate = self.touchDelegate{
                delegate.endedTouch()
            }
        }
    }
   
}
