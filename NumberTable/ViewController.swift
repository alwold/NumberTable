//
//  ViewController.swift
//  NumberTable
//
//  Created by Al Wold on 10/9/14.
//  Copyright (c) 2014 Al Wold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minNumber: UITextField!
    @IBOutlet weak var maxNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var min = minNumber.text.toInt()
        var max = maxNumber.text.toInt()
        NSLog("minNumber \(min) maxNumber \(max)")
        if segue.destinationViewController is TableViewController {
            var tvc: TableViewController = segue.destinationViewController as TableViewController
            tvc.min = min
            tvc.max = max
        } else {
            NSLog("BIG PROBLEMS")
        }
    }

}

