//  AddViewController.swift
//  Recipe1
//
//  Created by jowilkey on 5/23/15.
//  Copyright (c) 2015 John Wilkey. All rights reserved.

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var titleText: UITextField!
    @IBOutlet var recipeContent: UITextView!
    @IBOutlet var recipeText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleText.backgroundColor =
            UIColor.whiteColor().colorWithAlphaComponent(0.5);
        recipeContent.backgroundColor =
            UIColor.whiteColor().colorWithAlphaComponent(0.5);
        recipeText.backgroundColor =
            UIColor.whiteColor().colorWithAlphaComponent(0.5);
    }

    @IBAction func beginRecipeEdit(sender: AnyObject) {
        recipeText.backgroundColor =
            UIColor.whiteColor().colorWithAlphaComponent(1);
    }

    @IBAction func endRecipeEdit(sender: AnyObject) {
        recipeText.backgroundColor =
            UIColor.whiteColor().colorWithAlphaComponent(0.5);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
