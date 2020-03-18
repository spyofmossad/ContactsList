//
//  BaseTabBarController.swift
//  RandomPersons
//
//  Created by Dmitry on 18.03.2020.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    let persons = PersonFaker.getPersonsList()

}
