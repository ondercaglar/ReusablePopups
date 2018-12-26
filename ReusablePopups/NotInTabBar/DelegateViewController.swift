//
//  DelegateViewController.swift
//  ReusablePopups
//
//  Created by Boss on 26.12.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class DelegateViewController: UIViewController {


    
    @IBOutlet weak var timeLabel: UILabel!
    

    @IBAction func selectTime_TouchUpInside(_ sender: UIButton)
    {
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! DatePopupViewController
        popup.showTimePicker = true
        popup.delegate = self
        self.present(popup, animated: true)
    }
    
    
    @IBAction func dismiss_TouchUpInside(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    deinit {
        print("DelegateViewController was de-initialized.")
    }
    
}


//Conform this class to the Protocol "PopupDelegate"
extension DelegateViewController: PopupDelegate
{
    func popupValueSelected(value: String) {
        timeLabel.text = value
    }
    
    
}
