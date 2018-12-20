//
//  FirstViewController.swift
//  ReusablePopups
//
//  Created by Boss on 20.12.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDatePopupViewControllerSegue"
        {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
        }
    }


}

