//
//  PersonsTableViewController.swift
//  RandomPersons
//
//  Created by Dmitry on 17.03.2020.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class PersonsTableViewController: UITableViewController {
    
    private var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
                
        let baseTabBar = tabBarController as! BaseTabBarController
        persons = baseTabBar.persons
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        let person = persons[indexPath.row]
        
        cell.textLabel?.text = person.fullName

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let detailsVC = segue.destination as! DetailsViewController
        detailsVC.person = persons[indexPath.row]
    }
    

}
