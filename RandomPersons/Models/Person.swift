//
//  Person.swift
//  RandomPersons
//
//  Created by Dmitry on 17.03.2020.
//  Copyright © 2020 Dmitry. All rights reserved.
//

struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
