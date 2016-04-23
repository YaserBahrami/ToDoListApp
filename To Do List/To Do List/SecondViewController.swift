//
//  SecondViewController.swift
//  To Do List
//
//  Created by yaser on 4/23/16.
//  Copyright © 2016 yaserBahrami. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var toDoItem: UITextField!
    
    @IBAction func addToDoItem(sender: AnyObject) {
        if(toDoItem.text != "")
        {
            toDoList.append(toDoItem.text!)
            toDoItem.text = ""
            
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        toDoItem.resignFirstResponder()
        return true
    }

}

