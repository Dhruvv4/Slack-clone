//
//  ChannelVC.swift
//  Smack
//
//  Created by Dhruv Vaghela on 18/01/18.
//  Copyright © 2018 Dhruv Vaghela. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 75
    }
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
