//
//  SecondViewController.swift
//  ReusablePopups
//
//  Created by Boss on 20.12.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDatePopupViewControllerSegueFromSecond"
        {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            // 1. Assign to a function
//            popup.onSave = onSave
            // 2. Use a Closure
            popup.onSave = {(data) in
                self.dateLabel.text = data
            }
        }
    }

    /*
    func onSave(_ data: String) ->()
    {
        dateLabel.text = data
    }*/


    
    
}

