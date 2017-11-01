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
        map.addAnnotations(tacoStandAnnotations)
    }
    
    func gatherTacoStandAnnotations () {
        for item in tacoStands {
            let tsAnnotation = AnnotationTacoStand(coord: item.coordinate, name: item.name, speciality: item.specialty)
            tacoStandAnnotations.append(tsAnnotation)
        }
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
