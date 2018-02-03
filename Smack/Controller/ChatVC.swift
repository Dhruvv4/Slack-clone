//
//  ChatVC.swift
//  Smack
//
//  Created by Dhruv Vaghela on 18/01/18.
//  Copyright © 2018 Dhruv Vaghela. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    
    // Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

}
