//
//  DetailViewController.swift
//  Recipe1
//
//  Created by jowilkey on 5/23/15.
//  Copyright (c) 2015 John Wilkey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var detailText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailText.backgroundColor =
            UIColor.whiteColor().colorWithAlphaComponent(0.5);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
