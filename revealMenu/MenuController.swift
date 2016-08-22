//
//  MenuController.swift
//  revealMenu
//
//  Created by Yaser Almasri on 8/22/16.
//  Copyright © 2016 MaSys. All rights reserved.
//

import UIKit

class MenuController: UITableViewController {
    
    let cellId = "cellId"
    
    let menus = ["Dashboard", "Second Controller"]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerClass(MenuCell.self, forCellReuseIdentifier: cellId)
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)

        cell.textLabel?.text = menus[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var controller: UINavigationController?
        if menus[indexPath.row] == "Dashboard" {
            controller = UINavigationController(rootViewController: DashboardController())
        }
        else if menus[indexPath.row] == "Second Controller" {
            controller = UINavigationController(rootViewController: SecondController())
        }
        self.revealViewController().pushFrontViewController(controller, animated: true)
    }
}

class MenuCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .Subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}














