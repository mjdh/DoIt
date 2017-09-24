//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Michael Henley on 24/09/2017.
//  Copyright © 2017 Michael Henley. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    var previousVC = TasksViewController()
    var task = Task()
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if task.important == true {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }

    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableview.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
