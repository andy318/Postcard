//
//  ViewController.swift
//  Postcard
//
//  Created by Anuj Agarwal on 11/17/14.
//  Copyright (c) 2014 Anuj Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageFeedback: UILabel!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var message: UITextField!
    @IBOutlet weak var sendMessage: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessage(sender: UIButton) {
        messageFeedback.text = "Thanks \(name.text)!"
        messageFeedback.textColor = UIColor.orangeColor()
        messageFeedback.hidden = false
        message.resignFirstResponder()
        sendMessage.setTitle("Sent!", forState: UIControlState.Disabled)
        sendMessage.enabled = false
    }

}

