//  ViewController.swift
//  Recipe1
//
//  Created by jowilkey on 5/23/15.
//  Copyright (c) 2015 John Wilkey. All rights reserved.

import UIKit

class ViewController: UITableViewController {
    let dataArray = ["first item", "second item", "third item"];

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70;
        tableView.separatorColor = UIColor.grayColor();
        tableView.backgroundView =
            UIImageView(image: UIImage(named: "background_image"));
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        navigationController?.navigationBar.alpha = 0.5;
        navigationController?.navigationBar.tintColor = UIColor.whiteColor();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(
            tableView: UITableView,
            numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    override func tableView(
            tableView: UITableView,
            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =
            tableView.dequeueReusableCellWithIdentifier("customcell")
            as! UITableViewCell;
        cell.textLabel?.text = dataArray[indexPath.item];
        cell.backgroundColor =
            (indexPath.item % 2 == 0)
            ? UIColor.clearColor()
            : UIColor.whiteColor().colorWithAlphaComponent(0.2);
        cell.textLabel?.textColor = UIColor.whiteColor();
        return cell;
    }
}