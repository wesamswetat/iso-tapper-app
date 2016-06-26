//
//  ViewController.swift
//  tapperApp
//
//  Created by Wesam on 6/26/16.
//  Copyright © 2016 Wesam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CuinButton: UIButton!
    @IBOutlet weak var PlayButton: UIButton!
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var TapsLabel: UILabel!
    @IBOutlet weak var TapsText: UITextField!
    
    var howManyToTap: Int = 0
    var tapping: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CuinButton(sender: AnyObject) {
        
        tapping += 1
        TapsLabel.text = "\(tapping) Taps"
        
        if tapping == howManyToTap {
            
            Logo.hidden = false
            TapsText.hidden = false
            PlayButton.hidden = false
            CuinButton.hidden = true
            TapsLabel.hidden = true
            howManyToTap = 0
            tapping = 0
        }
        
    }


    @IBAction func PlayButton(sender: AnyObject) {
        
        Logo.hidden = true
        TapsText.hidden = true
        howManyToTap = Int(TapsText.text!)!
        TapsText.text = ""
        PlayButton.hidden = true
        CuinButton.hidden = false
        TapsLabel.hidden = false
        
    }
}

