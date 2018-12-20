//
//  SelectTimeViewController.swift
//  ReusablePopups
//
//  Created by Boss on 20.12.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectTime_TouchUpInside(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! DatePopupViewController
        popup.showTimePicker = true
        self.present(popup, animated: true)
        
    }
    

}
