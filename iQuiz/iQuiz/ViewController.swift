//
//  ViewController.swift
//  iQuiz
//
//  Created by Vivyan Woods on 10/29/15.
//  Copyright © 2015 Vivyan Woods. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func settingsPressed(sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Settings go here", message: "OK", preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "Okay", style: .Default, handler: nil)
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

