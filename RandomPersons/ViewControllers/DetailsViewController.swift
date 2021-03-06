//
//  DetailsViewController.swift
//  RandomPersons
//
//  Created by Dmitry on 17.03.2020.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var email: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = person.fullName
        email.text = "Email: \(person.email)"
        phoneNumber.text = "Phone number: \(person.phone)"
    }
}
