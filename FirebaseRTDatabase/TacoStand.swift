//
//  TacoStand.swift
//  FIrebaseBasic
//
//  Created by R on 10/30/16.
//  Copyright © 2016 R. All rights reserved.
//

import Foundation
import FirebaseDatabase
import MapKit

class TacoStand: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D

    var name: String
    var city: String
    var specialty: String
    let ref: DatabaseReference?
    
    init(coord: CLLocationCoordinate2D, name: String, city: String, specialty: String) {
        self.name = name
        self.city = city
        self.specialty = specialty
        self.coordinate = coord
        ref = nil
    }
    
    init( snapshot: DataSnapshot) {
        name = snapshot.key
        let snapvalues = snapshot.value as! [String : AnyObject]
        print("snapvalues: \(snapvalues)")
        city = snapvalues["city"] as! String
        specialty = snapvalues["specialty"] as! String //?? "N/A"
        let lat = snapvalues["latitude"] as! CLLocationDegrees
        let lon = snapvalues["longitude"] as! CLLocationDegrees
        coordinate = CLLocationCoordinate2D.init(latitude: lat, longitude: lon)
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "name" : name,
            "city" : city,
            "specialty" : specialty,
            "coordinate" : coordinate
        ]
    }
}
