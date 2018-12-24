//
//  SelectTimeViewController.swift
//  ReusablePopups
//
//  Created by Boss on 20.12.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectTime_TouchUpInside(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! DatePopupViewController
        popup.showTimePicker = true
        popup.delegate = self
        self.present(popup, animated: true)
        
    }
}


extension SelectTimeViewController: PopupDelegate
{
    func popupValueSelected(value: String) {
        timeLabel.text = value
    }
    
    
}
