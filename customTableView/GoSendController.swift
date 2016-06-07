//
//  GoSendController.swift
//  customTableView
//
//  Created by Maxim Nikolaevich on 05.06.16.
//  Copyright © 2016 Absalt. All rights reserved.
//

import UIKit
import GoogleMaps

class GoSendController: UITableViewController, GMSMapViewDelegate {
    let heightOfHeader: CGFloat = 40
    
    
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        self.tableView.rowHeight = 80
        self.tableView.backgroundColor = UIColor.whiteColor()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        let nextItem = UIBarButtonItem.init(title: "Next",
                                            style: .Done,
                                            target: self,
                                            action: #selector(self.nextButtonPressed(_:)))
        nextItem.enabled = false
        self.navigationItem.rightBarButtonItem = nextItem
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func nextButtonPressed(sender: UIBarButtonItem) {
        // TODO code here
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return heightOfHeader
    }

    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let width = tableView.frame.size.width;
        let header: UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: width, height: heightOfHeader))
        header.backgroundColor = UIColor.whiteColor()

        let label = UILabel.init(frame: CGRect.init(x: 40, y: 0, width: width - 40, height: heightOfHeader))
        label.text = (0 == section) ? "FROM" : "TO"
        label.textColor = UIColor.darkGrayColor()
        header.addSubview(label)
        return header
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var reuseIdentifier = "pickAlocation"
        if (indexPath.row == 1) {
            reuseIdentifier = "locationDetails"
        } else if (indexPath.row == 2) {
            reuseIdentifier = "contactPerson"
        } else if (indexPath.row == 3) {
            reuseIdentifier = "maps"
        }
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath)

        // Configure the cell...
        if (indexPath.row == 0) {
            // update label 'pick a location'
        }

        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        // insert code to go to new screen here
    }

}


