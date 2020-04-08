//
//  ViewController.swift
//  locationSample
//
//  Created by Stephan Ng on 4/7/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        var long = 0.0
        var lat = 0.0
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.requestWhenInUseAuthorization()
        var currentLoc: CLLocation!
        if(CLLocationManager.authorizationStatus() == .authorizedWhenInUse ||
        CLLocationManager.authorizationStatus() == .authorizedAlways) {
            currentLoc = locationManager.location
            print(currentLoc.coordinate.latitude)
            print(currentLoc.coordinate.longitude)
            long = currentLoc.coordinate.longitude
            lat = currentLoc.coordinate.latitude
        }

        latLabel.text = "\(long)"
        longLabel.text = "\(lat)"

    }
    

}

