//
//  ViewController.swift
//  TimesTable
//
//  Created by Steven Yang on 4/12/16.
//  Copyright © 2016 Yato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sliderOutlet: UISlider!

    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = "Multiply by \(String(Int(sliderOutlet.value)))"
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "\(indexPath.row + 1): \(indexPath.row + 1) * \(Int(sliderOutlet.value)) = \(String((indexPath.row + 1) * Int(sliderOutlet.value)))"
        return cell
    }

    @IBAction func numberSlider(sender: AnyObject) {
        numberLabel.text = String(Int(sliderOutlet.value))
        tableView.reloadData()
    }

}

