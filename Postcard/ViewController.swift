//
//  ViewController.swift
//  Postcard
//
//  Created by admin on 10/1/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //adding a comment here
        messageLabel.hidden = false
        messageLabel.text = enterMessage.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false;
        nameLabel.text = enterName.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessage.text = ""
        enterMessage.resignFirstResponder()
        
        enterName.text = ""
        enterName.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.userInteractionEnabled = false
    }

}

