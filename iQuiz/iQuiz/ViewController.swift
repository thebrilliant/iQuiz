//
//  ViewController.swift
//  iQuiz
//
//  Created by Vivyan Woods on 10/29/15.
//  Copyright © 2015 Vivyan Woods. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let subjects = ["Mathematics", "Marvel Super Heroes", "Science"]
    private let subjectsDescr = ["Math questions here!", "All the MSH trivia here!", "Science is so much fun!"]
    let tableID = "QuizTopics"
    private var sub : SubjectViewController!
    
    @IBAction func settingsPressed(sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Settings go here", message: "OK", preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "Okay", style: .Default, handler: nil)
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        subjectLoader()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func subjectLoader() {
        if sub == nil {
            sub = storyboard?.instantiateViewControllerWithIdentifier("Subject") as! SubjectViewController
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(tableID) as UITableViewCell!
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: tableID)
        }
        cell.imageView?.image = UIImage(named: "200px-ALBW_Triforce")
        cell.textLabel?.text = subjects[indexPath.row]
        cell.detailTextLabel?.text = subjectsDescr[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let rowValue = subjects[indexPath.row]
        /*
        if sub != nil && sub.view.superview != nil {
            
        }
        */
        switchViewController(nil, to: sub)
        //let message = "You selected \(rowValue)"
        //let controller = UIAlertController(title: "Row Selected", message: message, preferredStyle: .Alert)
        //let action = UIAlertAction(title: "Yes I Did", style: .Default, handler: nil)
        //controller.addAction(action)
        
        //presentViewController(controller, animated: true, completion: nil)
    }
    
    private func switchViewController(from: UIViewController?, to: UIViewController?) {
        if from != nil {
            from!.willMoveToParentViewController(nil)
            from!.view.removeFromSuperview()
            from!.removeFromParentViewController()
        }
        
        if to != nil {
            self.addChildViewController(to!)
            self.view.insertSubview(to!.view, atIndex: 0)
            to!.didMoveToParentViewController(self)
        }
    }
}

