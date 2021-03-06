//
//  MasterViewController.swift
//  FirebaseRTDatabase
//
//  Created by Isaac Trotta on 10/31/17.
//  Copyright © 2017 R. All rights reserved.
//

import UIKit
import MapKit
import Firebase


class MasterViewController: UIViewController {


    var tacoRoot : DatabaseReference?
    var tacoStands = [TacoStand]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Database.database().isPersistenceEnabled = true
        tacoRoot = Database.database().reference(withPath: "TacoStands")
        
        //collect the data
        setRetrieveCallback()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setRetrieveCallback() {
        tacoRoot?.queryOrdered(byChild: "TacoStands").observe(.value, with:
            { snapshot in
                
                var newStands = [TacoStand]()
                
                for item in snapshot.children {
                    newStands.append(TacoStand(snapshot: item as! DataSnapshot))
                }
                
                self.tacoStands = newStands
                
                self.dataRecivedCallSegue()
        })
    }
    
    func dataRecivedCallSegue() {
        performSegue(withIdentifier: "mapView", sender: self)
        performSegue(withIdentifier: "tacoTableView", sender: self)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "mapView") {
            if let destinationVC = segue.destination as? MapViewController {
                destinationVC.tacoStands = tacoStands
            }
        }
        if(segue.identifier == "tacoTableView") {
            if let destinationVC = segue.destination as? TacoStandTVC {
                destinationVC.tacoStands = tacoStands
            }
        }
    }
    
    //prevent the view controller from seguing before the data has been recived
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return false
    }
    
}
