//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Michael Henley on 24/09/2017.
//  Copyright © 2017 Michael Henley. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController() 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        //Create a task from the outlets' information
        
        let task = Task()
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Add new task to array in previous viewcontroller
        
        previousVC.tasks.append(task)
        previousVC.tableview.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
