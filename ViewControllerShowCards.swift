//
//  ViewControllerShowCards.swift
//  SpeakCorrect
//
//  Created by Giorgio Maddaloni on 21/02/18.
//  Copyright © 2018 Giorgio Maddaloni. All rights reserved.
//

import UIKit

class ViewControllerShowCards: UIViewController {
    
    @IBOutlet weak var LabelFinish: UILabel!
    @IBOutlet weak var nextCardOutlet: UIButton!
    @IBOutlet weak var Card: UIImageView!
    @IBOutlet weak var LabelCard: UILabel!
    @IBAction func nextCard(_ sender: Any) {
        if noCard != imagesFromSelect.count-1{
            noCard = noCard + 1
            Card.image = imagesFromSelect[noCard]
            LabelCard.text = textfieldsFromSelect[noCard]
        }else{
            Card.isHidden=true
            LabelCard.isHidden=true
            nextCardOutlet.isEnabled=false
            LabelFinish.isHidden=false
        }
    }
    
    var imagesFromSelect : [UIImage] = []
    var textfieldsFromSelect : [String] = []
    var noCard = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        Card.isHidden = false
        LabelCard.isHidden = false
        LabelFinish.isHidden=true
        Card.image = imagesFromSelect[0]
        LabelCard.text = textfieldsFromSelect[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
