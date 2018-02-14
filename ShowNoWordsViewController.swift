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
    var word = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noWord.text = word

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
