//
//  LocationViewController.swift
//  FollowMyFeet
//
//  Created by Nicholas Judd on 11/05/2016.
//  Copyright © 2016 Michael Beavis. All rights reserved.
//

import Foundation
import UIKit
import CoreData
class PathTabController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var data: dataAccess = dataAccess.sharedInstance
    @IBOutlet weak var pathTable: UITableView!
    var path: [Path]!
    //var destionationLocation: CLLocation?
    var pathBool: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        pathTable.delegate = self
        pathTable.dataSource = self
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //checkCount()
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath){
        //checkCount()
    }
    
    func checkCount(){
        if let list = self.pathTable.indexPathsForSelectedRows {
            if list.count > 1 {
                pathBool = true
            }else if list.count == 1 {
                pathBool = false
            }
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        return cell;
    }
    
}