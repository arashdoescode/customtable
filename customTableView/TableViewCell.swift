//
//  TableViewCell.swift
//  customTableView
//
//  Created by Arash on 6/7/16.
//  Copyright © 2016 Absalt. All rights reserved.
//

import UIKit
import GoogleMaps

class TableViewCell: UITableViewCell, GMSMapViewDelegate  {
    
    
    let locationManager = CLLocationManager()
    

    
    @IBOutlet var mapView: GMSMapView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.locationManager.requestAlwaysAuthorization()
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        mapView.delegate = self
        mapView.settings.myLocationButton = true

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


