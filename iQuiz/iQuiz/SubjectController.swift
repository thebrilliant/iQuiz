//
//  SubjectController.swift
//  iQuiz
//
//  Created by Vivyan Woods on 11/3/15.
//  Copyright © 2015 Vivyan Woods. All rights reserved.
//

import Foundation
import UIKit

class SubjectViewController: UIViewController {
    //@IBOutlet weak var listQ: UILabel!
    @IBOutlet weak var list: UITextView!
    let mathQ = ["1+1?", "e is?"]
    let superQ = ["Who is Peter Parker?", "Thor is from which mythology?"]
    let scienceQ = ["What does antichiral mean?", "What is RNAse used for?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        list.text = "\(mathQ[0]) \(mathQ[1]) \(superQ[0]) \(superQ[1]) \(scienceQ[0]) \(scienceQ[1])"
        //listQ.text? = "\(mathQ[0]) \(superQ[0]) \(scienceQ[0])"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}