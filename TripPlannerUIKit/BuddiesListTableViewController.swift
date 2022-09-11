//
//  BuddiesListTableViewController.swift
//  TripPlannerUIKit
//
//  Created by Giedre Majauskaite on 10/09/2022.
//

import UIKit
//import SwiftUI

struct Person {
    
    let firstName: String
    let middleName: String?
    var lastName: String
    var age: Int
    let sex: String

}

class BuddiesListTableViewController: UITableViewController {

    // Dummy data model
    let buddies = [
      Person(firstName: "Serena", middleName: "Jameka", lastName: "Williams", age: 40, sex: "Female"),
      Person(firstName: "Venus", middleName: "Ebony Starr", lastName: "Williams", age: 42, sex: "Female"),
      Person(firstName: "Taylor", middleName: "Harry", lastName: "Fritz", age: 25, sex: "Male"),
      Person(firstName: "Andy", middleName: "Barron", lastName: "Murray", age: 35, sex: "Male"),
      Person(firstName: "Carlos", middleName: nil, lastName: "Alcaraz", age: 19, sex: "Male"),
      Person(firstName: "Sebastian", middleName: nil, lastName: "Korda", age: 22, sex: "Male")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return buddies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = String("\(buddies[indexPath.row].firstName)" + " \(buddies[indexPath.row].lastName)")

        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    
//        let buddiesRow = buddies[indexPath.row]
//        performSegue(withIdentifier: "ShowBuddy", sender: buddiesRow)
//    
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//      if segue.identifier == "ShowBuddy" {
//        let detailsScreenViewController = segue.destination as? DetailsScreenViewController
//      }
//    }

//    @IBSegueAction func showDetailsScreenView(_ coder: NSCoder) -> UIViewController? {
//    //    UIHostingController(coder: coder, rootView: DetailsScreenView())
//    }
}
