//
//  NotificationViewController.swift
//  ReusablePopups
//
//  Created by Boss on 26.12.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    
    @IBOutlet weak var dateLabel: UILabel!
    
    var observer: NSObjectProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        // 1. NOTIFICATIOSN OLD WAY
        //NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDateTime, object: nil)
        
        
        // 1. 1. NOTIFICATIOSN NEW WAY
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main)
        {[unowned self] (notification) in
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
    

    @IBAction func selectDate_TouchUpInside(_ sender: Any) {
        
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! DatePopupViewController
        self.present(popup, animated: true)
    }
    
    @IBAction func dismiss_TouchUpInside(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    
    deinit {
        print("NotificationViewController was de-initialized.")
    }
}
