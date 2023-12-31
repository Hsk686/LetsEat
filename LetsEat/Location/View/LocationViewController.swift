//
//  LocationViewController.swift
//  LetsEat
//
//  Created by Hsk Abbas on 24/09/2023.
//

import UIKit

class LocationViewController: UIViewController,UITableViewDataSource {
    let manager = LocationDataManager()
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        manager.fetch()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        manager.numberOfLocationItems()
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
       withIdentifier: "locationCell", for: indexPath)
        
        cell.textLabel?.text = manager.locationItem(at: indexPath.row)
        return cell
    }
    

}
