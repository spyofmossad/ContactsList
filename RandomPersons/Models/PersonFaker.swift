//
//  PersonDataManager.swift
//  RandomPersons
//
//  Created by Dmitry on 17.03.2020.
//  Copyright © 2020 Dmitry. All rights reserved.
//

class PersonFaker {
    
    private static var firstNames = [
        "Kate", "Mary", "Kit", "John", "Michael",
        "Lisa", "David", "Steve", "Kris", "Mike"
    ]
    private static var lastNames = [
        "Tucker", "Mason", "Richardson", "Vasquez", "Hudson",
        "Morrison", "Marshall", "Olson", "Cunningham", "Johnston"
    ]
    private static var phones = [
        "123-123-123", "231-231-231", "999-666-777", "222-333-444", "345-678-345",
        "678-456-678", "010-487-438", "555-000-555", "998-776-665", "334-556-778"
    ]
    private static var emails = [
        "someEmail@gmail.com", "random123@gmail.com", "mewEmailEmail@gmail.com",
        "sdlkgjdlfg@gmail.com", "r3984ur@gmail.com", "111wetijqjpffwf@gmail.com",
        "fq4p39jtpqifojr@gmail.com", "4r4r4r4r4r4r4@gmail.com", "sdflkjsdf@gmail.com",
        "lkjlkjlkjsdf@gmail.com",
    ]
    
    static func getPersonsList() -> [Person] {
        var persons: [Person] = []
        
        for ((firstName, (lastName, (phone, email)))) in
            zip(firstNames.shuffled(),
                zip(lastNames.shuffled(),
                    zip(phones.shuffled(), emails.shuffled()))) {
            
                        persons.append(Person(firstName: firstName,
                                              lastName: lastName,
                                              phone: phone,
                                              email: email))
        }
        
        return persons
    }
}
