//
//  Maps.swift
//  TourApp
//
//  Created by Vidya on 8/28/19.
//  Copyright © 2019 Vidya Jayaraman. All rights reserved.
//

import UIKit
import GoogleMaps

class Maps: UIViewController {
// AIzaSyCrIrb4qqgYZJTVttedqSr1XekR28nUS2s
    override func viewDidLoad() {
        super.viewDidLoad()
    let camera = GMSCameraPosition.camera(withLatitude: -42.507351, longitude: 146.925861 , zoom: 7)
    
    let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    view = mapView
    
    // Creates a marker in the center of the map.
    let marker = GMSMarker()
    marker.position = CLLocationCoordinate2D(latitude: -42.507351, longitude:  146.925861)
    marker.title = "Rathmore Cottage"
    marker.snippet = "Tasmania"
    marker.map = mapView
    }
    
      
}
//
    
  

