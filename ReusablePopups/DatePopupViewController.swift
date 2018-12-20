//
//  DatePopupViewController.swift
//  ReusablePopups
//
//  Created by Boss on 20.12.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    
    var showTimePicker: Bool = false
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       if showTimePicker
       {
            titleLabel.text = "Select Time"
            datePicker.datePickerMode = .time
            saveButton.setTitle("Save Time", for: .normal)
       }
        
        
    }
    


    @IBAction func saveDate_TouchUpInside(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
}
