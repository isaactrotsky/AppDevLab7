//
//  MasterViewController.swift
//  FirebaseRTDatabase
//
//  Created by Isaac Trotta on 10/31/17.
//  Copyright © 2017 R. All rights reserved.
//

import UIKit
import MapKit


class MasterViewController: UIViewController {

//    fileprivate var locationTableViewController: LocationTableViewController?
//    fileprivate var mapViewController: MapViewController?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//
//        guard let locationController = childViewControllers.first as? LocationTableViewController else  {
//            fatalError("Check storyboard for missing LocationTableViewController")
//        }
//
//        guard let mapController = childViewControllers.last as? MapViewController else {
//            fatalError("Check storyboard for missing MapViewController")
//        }
//
//        locationTableViewController = locationController
//        mapViewController = mapController
//        locationController.delegate = self
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
