//
//  FirstViewController.swift
//  ReusablePopups
//
//  Created by Boss on 20.12.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var dateLabel: UILabel!
    
    var observer: NSObjectProtocol?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        // 1. NOTIFICATIOSN OLD WAY
        //NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDateTime, object: nil)
        
        
        // 1. 1. NOTIFICATIOSN NEW WAY
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main)
        { (notification) in
            let dateVC = notification.object as! DatePopupViewController
            self.dateLabel.text = dateVC.formattedDate
        }
        
    }
    
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let observer = observer
        {
            NotificationCenter.default.removeObserver(observer)
        }
    }
    
    
    
    // 1. NOTIFICATIOSN OLD WAY
    /* 
    @objc func handlePopupClosing(notification: Notification)
    {
        let dateVC = notification.object as! DatePopupViewController
        dateLabel.text = dateVC.formattedDate
    }*/
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDatePopupViewControllerSegue"
        {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
        }
    }


}

