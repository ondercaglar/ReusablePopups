//
//  CallbackViewController.swift
//  ReusablePopups
//
//  Created by Boss on 26.12.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class CallbackViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDatePopupViewControllerSegueFromSecond"
        {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            popup.onSave = {(data) in
                self.dateLabel.text = data
            }
        }
    }


    @IBAction func dismiss_TouchUpInside(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    deinit {
        print("Deallocating CallbackViewController")
    }

}
