//
//  ViewController.swift
//  PairClientSide
//
//  Created by William Huang on 1/5/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pairTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        pairTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        pairTitle.textAlignment = NSTextAlignment.Center
        pairTitle.center = CGPointMake(UIScreen.mainScreen().bounds.width / 2.0, UIScreen.mainScreen().bounds.height / 4.0)
        pairTitle.text = "Pair"
        pairTitle.font = UIFont(name: "Helvetica Light", size: 60.0)
        self.view.addSubview(pairTitle)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

