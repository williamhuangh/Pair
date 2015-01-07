//
//  ViewController.swift
//  PairClientSide
//
//  Created by William Huang on 1/5/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    
    var pairTitle: UILabel!
    var enterTitle: UILabel!
    var phoneNumberTextField: UITextField!
    var submitButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        pairTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        pairTitle.textAlignment = NSTextAlignment.Center
        pairTitle.center = CGPointMake(UIScreen.mainScreen().bounds.width / 2.0, UIScreen.mainScreen().bounds.height / 4.0)
        pairTitle.text = "Pair"
        pairTitle.font = UIFont(name: "Helvetica Light", size: 60.0)
        self.view.addSubview(pairTitle)
        
        enterTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        enterTitle.textAlignment = NSTextAlignment.Center
        enterTitle.center = CGPointMake(UIScreen.mainScreen().bounds.width / 2.0, UIScreen.mainScreen().bounds.height / 5.0 * 2.0)
        enterTitle.text = "Enter Your Partner's Phone Number:"
        enterTitle.font = UIFont(name: "Helvetica Light", size: 15.0)
        self.view.addSubview(enterTitle)
        
        phoneNumberTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 120, height: 40))
        phoneNumberTextField.textAlignment = NSTextAlignment.Center
        phoneNumberTextField.center = CGPointMake(enterTitle.center.x, enterTitle.center.y + enterTitle.bounds.size.height)
        phoneNumberTextField.layer.borderWidth = 2.0
        phoneNumberTextField.layer.borderColor = UIColor.blackColor().CGColor
        self.view.addSubview(phoneNumberTextField)
        
        submitButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        submitButton.titleLabel?.textAlignment = NSTextAlignment.Center
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
        submitButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        submitButton.center = CGPointMake(phoneNumberTextField.center.x, phoneNumberTextField.center.y + phoneNumberTextField.bounds.size.height / 2.0 + submitButton.bounds.size.height / 2.0 + 5)
        submitButton.addTarget(self, action: "submitTouched:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(submitButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func submitTouched(sender: UIButton!){
        println(phoneNumberTextField.text)
    }

}

