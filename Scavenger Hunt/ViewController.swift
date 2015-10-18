//
//  ViewController.swift
//  Scavenger Hunt
//
//  Created by vritant bhardwaj on 15/10/15.
//  Copyright © 2015 Vritant. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    var newItem: ScavengerHuntItem?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DoneItem" {
            if let name = textfield.text {
                if !name.isEmpty {
                    newItem = ScavengerHuntItem(name: name)
                }
            }
        }
    }
    
    @IBAction func cancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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

