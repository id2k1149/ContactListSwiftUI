//
//  Person.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/9/22.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    var infoRows: [String] {
        [phoneNumber, email]
    }
    
    static func getPersonList() -> [Person] {
        let dataStore = DataStore.shared
        
        var personList = [Person]()
        
        let names = dataStore.firstNameList.shuffled()
        let lastNames = dataStore.lastNameList.shuffled()
        let phoneNumbers = dataStore.phoneNumberList.shuffled()
        let emails = dataStore.emailList.shuffled()
        
        let iterationCount = min(
            names.count,
            lastNames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: names[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            personList.append(person)
        }
        
        return personList
    }
}
