//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

      let fullName = "Alessandro Luigi Musto"
      let phoneNumber = 8675309

      print(fullName.pigLatin)
      print(fullName.whisper())
      print(fullName.shout())
      print(phoneNumber.half())
      print(phoneNumber.halved)
      print(phoneNumber.squared)
      print(phoneNumber.isDivisible(by: phoneNumber))

      unicornLevelLabel.text = fullName.unicornLevel;


        // Do any additional setup after loading the view, typically from a nib.
        
    }
}


