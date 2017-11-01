//
//  TacoStandTVC.swift
//  FIrebaseBasic
//
//  Created by R on 10/30/16.
//  Copyright © 2016 R. All rights reserved.
//

import UIKit


class TacoStandTVC: UITableViewController {
    
    // You can combine this with the init but not in the 1st VC
//    var tacoRoot : DatabaseReference?
//
//    var tacoStands = [TacoStand]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This must precede getting the database reference
//        Database.database().isPersistenceEnabled = true
//
//        tacoRoot = Database.database().reference(withPath: "TacoStands")
 
        //self.navigationItem.leftBarButtonItem = self.editButtonItem
        
        //let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        //self.navigationItem.rightBarButtonItem = addButton
        
//        setRetrieveCallback()
    }
    
//    func setRetrieveCallback() {
//        tacoRoot?.queryOrdered(byChild: "TacoStands").observe(.value, with:
//            { snapshot in
//            
//            var newStands = [TacoStand]()
//            
//            for item in snapshot.children {
//                newStands.append(TacoStand(snapshot: item as! DataSnapshot))
//            }
//            
//            self.tacoStands = newStands
//            self.tableView.reloadData()
//        })
//    }
    
   /* @objc func insertNewObject(_ sender: Any) {
        performSegue(withIdentifier: "addTacoStand", sender: nil)
    }
    
    func addTacoStand(newStand : TacoStand) {
        tacoStands.append(newStand)
        
        // add to Firebase
        let newStandRef = tacoRoot?.child(newStand.name)
        newStandRef?.setValue(newStand.toAnyObject())
    }
    
    @IBAction func unwindFromAdd(segue:UIStoryboardSegue) {
        //why isn't this necessary?
        //tableView.reloadData()
    }
    
    @IBAction func unwindFromCancel(segue:UIStoryboardSegue)
    {}
    */

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tacoStands.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tacoStandCell", for: indexPath) as? TacoStandTVCell
        
        let thisStand = tacoStands[indexPath.row]
        
        // Configure the cell...
        cell?.nameLabel.text = thisStand.name
        cell?.cityLabel.text = thisStand.city
        cell?.specialityLabel.text = thisStand.specialty

        return cell!
    }


    // Override to support editing the table view.
   /* override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let bailedStand = tacoStands[indexPath.row]
            bailedStand.ref?.removeValue()
        }
    }
    */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
