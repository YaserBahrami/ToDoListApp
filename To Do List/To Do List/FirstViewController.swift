//
//  FirstViewController.swift
//  To Do List
//
//  Created by yaser on 4/23/16.
//  Copyright © 2016 yaserBahrami. All rights reserved.
//

import UIKit

var toDoList = [String]()

class FirstViewController: UIViewController,UITableViewDelegate {

     
    @IBOutlet var toDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
            
            toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return toDoList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
    
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }
}

