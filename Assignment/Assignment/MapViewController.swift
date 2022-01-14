//
//  MapViewController.swift
//  Vision+ML Example
//
//  Created by Cheng Ngai Lun on 10/1/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class MapViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager : CLLocationManager?
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if CLLocationManager.locationServicesEnabled() {
            self.locationManager = CLLocationManager();
            self.locationManager?.delegate = self;
            if CLLocationManager.authorizationStatus() != .authorizedAlways {
                self.locationManager?.requestAlwaysAuthorization();
            }
            else {
                self.setupAndStartLocationManager();
            }
        }
        /*let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 22.356403871580195, longitude: 114.10664344342364)
        annontation.title = "aasdsae"
        annontation.subtitle = "4864531"
        map.addAnnotation(annontation)*/
        
        let shopLocations = [
            ["title": "20s貳拾年華旗袍店", "latitude": 22.284745934051553, "longitude": 114.15351216091865],
            ["title": "蘭芳園", "latitude": 22.282737838844625, "longitude": 114.1537626402976],
            ["title": "天寶樓扎作", "latitude": 22.28626054351211, "longitude": 114.14397612899319],
            ["title": "忠記雜貨店", "latitude": 22.33747158569741, "longitude": 114.19448532724176],
            ["title": "嘉億糉子,雲吞專門店", "latitude": 22.329632071914208, "longitude": 114.16217556713752],
            ["title": "United Wilson Porcelain Fty", "latitude": 22.286992804423004, "longitude": 114.13347373267476],
            ["title": "上海陸金記瓜子大王", "latitude": 22.372487786335707, "longitude": 114.1170647688795],
            ["title": "Dai Foon Hay Bakery", "latitude": 22.351481428942048, "longitude": 114.10544565310651],
            ["title": "Dim Dim Sum Mong Kok", "latitude": 22.32001412981729, "longitude": 114.1704783085122],
            ["title": "明生鋼竹蒸籠廠", "latitude": 22.310597841696524, "longitude": 114.17001780326699]
        ]

        for shopLocation in shopLocations{
            let annotation = MKPointAnnotation()
            annotation.title = shopLocation["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: shopLocation["latitude"] as! Double, longitude: shopLocation["longitude"] as! Double)
            map.addAnnotation(annotation)
        }
        
        
     }

     //for in-app authorization event
    func locationManager(_ manager: CLLocationManager,
                                didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {

            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01);
            let coord = location.coordinate;
            let region = MKCoordinateRegion(center: coord, span: span)
            map.setRegion(region, animated: true);
            	
        }
    }

    func setupAndStartLocationManager(){
        self.locationManager?.desiredAccuracy = kCLLocationAccuracyBest;
        self.locationManager?.distanceFilter = kCLLocationAccuracyBest;
        self.locationManager?.startUpdatingLocation();
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
