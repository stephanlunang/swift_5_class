//
//  ViewController.swift
//  Hello Color
//
//  Created by Stephan Ng on 4/6/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    var isPurple = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)

    }
    @IBOutlet weak var mapViewStuff: MKMapView!
    

    @IBAction func changeColor(_ sender: Any) {
        if isPurple{
            view.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
            isPurple = false
        } else {
            view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            isPurple = true
        }
    }
    
    private extension MKMapView {
      func centerToLocation(
        _ location: CLLocation,
        regionRadius: CLLocationDistance = 1000
      ) {
        let coordinateRegion = MKCoordinateRegion(
          center: location.coordinate,
          latitudinalMeters: regionRadius,
          longitudinalMeters: regionRadius)
        setRegion(coordinateRegion, animated: true)
      }
    }
}

