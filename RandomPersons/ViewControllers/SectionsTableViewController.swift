//
//  SectionsTableViewController.swift
//  RandomPersons
//
//  Created by Dmitry on 18.03.2020.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class SectionsTableViewController: UITableViewController {
    
    private var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseTabBar = tabBarController as! BaseTabBarController
        persons = baseTabBar.persons
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = persons[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        
        switch indexPath.row {
        case 0: cell.textLabel?.text = person.email
        case 1: cell.textLabel?.text = person.phone
        default: break
        }
        
        return cell
    }
}
