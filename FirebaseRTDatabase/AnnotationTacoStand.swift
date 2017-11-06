//
//  AnnotationTacoStand.swift
//  FirebaseRTDatabase
//
//  Created by Local Account 436-01 on 11/1/17.
//  Copyright © 2017 R. All rights reserved.
//

import Foundation
import MapKit

class AnnotationTacoStand : NSObject, MKAnnotation {

    var coordinate: CLLocationCoordinate2D
    var name : String?
    var speciality: String?
    
    var title: String?
    var subtitle: String?
    
    init(coord: CLLocationCoordinate2D, name: String, speciality: String) {
        coordinate = coord
        self.name = name
        self.speciality = speciality
        self.title = name
        self.subtitle = speciality

        
        super.init()
    }
}
