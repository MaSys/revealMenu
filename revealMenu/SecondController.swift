//
//  SecondController.swift
//  revealMenu
//
//  Created by Yaser Almasri on 8/22/16.
//  Copyright © 2016 MaSys. All rights reserved.
//

import UIKit

class SecondController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.lightGrayColor()
        self.navigationItem.title = "Second Controller"
    
        if self.revealViewController() != nil {
            
            let leftBtn = UIBarButtonItem(
                title: "Menu", style: .Plain, target: self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)))
            self.navigationItem.leftBarButtonItem = leftBtn
            
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            
        }
    }

}
