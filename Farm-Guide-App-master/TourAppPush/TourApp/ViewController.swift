//
//  ViewController.swift
//  TourApp
//
//  Created by Vidya on 8/25/19.
//  Copyright © 2019 Vidya Jayaraman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SignUpButton: UIButton!
    
    @IBOutlet weak var LogInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpElements()
    }
    
    func setUpElements() {
    Utilities.styleFilledButton(SignUpButton)
    Utilities.styleHollowButton(LogInButton)
    }

}

