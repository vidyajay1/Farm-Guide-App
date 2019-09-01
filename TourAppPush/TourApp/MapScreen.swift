//
//  MapScreen.swift
//  TourApp
//
//  Created by Vidya on 8/31/19.
//  Copyright © 2019 Vidya Jayaraman. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapScreen: UIViewController {
let locationManager = CLLocationManager()

    @IBOutlet weak var mapView: MKMapView!
    let regionInMeters: Double = 10000
    var previousLocation: CLLocation?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func centerViewOnUserLocation() {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
            mapView.setRegion(region, animated: true)
        }
    }
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            setupLocationManager()
            checkLocationAuthorization()
        } else {
            // Show alert letting the user know they have to turn this on.
        }
    }
    
    
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            //implement map
            //can also be done in storyboard
            mapView.showsUserLocation = true
            centerViewOnUserLocation()
            locationManager.startUpdatingLocation()
            break
        case .denied:
            //            // Show alert instructing them how to turn on permissions
            break
        case .notDetermined:
            //request permission
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            //            // Show an alert letting them know what's up
            break
        case .authorizedAlways:
            break
        }
    }
}

//adjust user location
extension MapScreen: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
            
        }
        let region = MKCoordinateRegion.init(center: location.coordinate, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
        mapView.setRegion(region, animated: true)
    }
    
    //to allow location authorization to change
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuthorization()
    }
}
