//
//  MapViewController.swift
//  FirebaseRTDatabase
//
//  Created by Local Account 436-01 on 11/1/17.
//  Copyright © 2017 R. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    
    var tacoStands = [TacoStand]()
    var tacoStandAnnotations = [AnnotationTacoStand]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        gatherTacoStandAnnotations()
        
        placeAnnotations()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func placeAnnotations() {
        print("First")
        map.showAnnotations(tacoStandAnnotations, animated: true);
        print("Secound")
        map.addAnnotations(tacoStandAnnotations)
    }
    
    func gatherTacoStandAnnotations () {
        for item in tacoStands {
            let tsAnnotation = AnnotationTacoStand(coord: item.coordinate, name: item.name, speciality: item.specialty)
            tacoStandAnnotations.append(tsAnnotation)
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let pinView = MKPinAnnotationView()
        pinView.canShowCallout = true;
        print("In map view")
        return pinView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
