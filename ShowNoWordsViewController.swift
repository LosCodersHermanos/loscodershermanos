//
//  ShowNoWordsViewController.swift
//  loscodershermanos
//
//  Created by Sara Buccino on 13/02/18.
//  Copyright © 2018 Luigi Scherillo. All rights reserved.
//

import UIKit

class ShowNoWordsViewController: UIViewController {

    @IBOutlet weak var noWord: UILabel!
    
    @IBOutlet weak var avantiButtonOutlet: UIButton!
    
    @IBOutlet weak var doneButton: UIButton!
    
    //var a = 0
    var i = 0
    
    @IBAction func avantiButton(_ sender: UIButton) {
       
        
        
        print("i: \(i)")
        
        print("cont: \(contatore)")
        
       // print("conteggio \(a)")
        if i < contatore - 2 {
            
            print("prima \(i)")
            i = i + 1
            print("dopo \(i)")
            noWord.text = words[i]
        } else {
            noWord.text = words[contatore - 1]
            avantiButtonOutlet.isHidden = true
            avantiButtonOutlet.isEnabled = false
            doneButton.isHidden = false
            doneButton.isEnabled = true
        }
       
        
        
       
        
    }
    var word = String()
    var words: [String] = []
    //var words: Set<String> = []
    var contatore = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        contatore = words.count
        
        if contatore == 1 {
            avantiButtonOutlet.isHidden = true
            avantiButtonOutlet.isEnabled = false
            doneButton.isHidden = false
            doneButton.isEnabled = true
        } else {
            doneButton.isEnabled = false
            doneButton.isHidden = true
            avantiButtonOutlet.isHidden = false
            avantiButtonOutlet.isEnabled = true
        }
        //a = words.count
        
        noWord.text = words[0]
        
      /*  if words != [] {
        
        for i in 0...(contatore - 1) {
        noWord.text = words[i]
            print("wwww\(words[i])")
            print("rrrrr\(i)")
            print("tttttt\(contatore)")
            
                    }
            
        }*/
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
