//
//  DataStore.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/9/22.
//

class DataStore {
    static let shared = DataStore()
    
    let firstNameList = [
        "Bruce",
        "Sharon",
        "Tim",
        "Carl",
        "Aaron",
        "John",
        "Steven",
        "Nicola",
        "Ted"
    ]
    let lastNameList = [
        "Pennyworth",
        "Dow",
        "Smith",
        "Williams",
        "Isaacson",
        "Robertson",
        "Murhy",
        "Black",
        "Butler"
    ]
    let phoneNumberList = [
        "+1 000 111-1111",
        "+1 000 222-2222",
        "+1 000 333-3333",
        "+1 000 444-4444",
        "+1 000 555-5555",
        "+1 000 666-6666",
        "+1 000 777-7777",
        "+1 000 888-8888",
        "+1 000 999-9999"
    ]
    let emailList = [
        "mail_1@mail.mail",
        "mail_2@mail.mail",
        "mail_3@mail.mail",
        "mail_4@mail.mail",
        "mail_5@mail.mail",
        "mail_6@mail.mail",
        "mail_7@mail.mail",
        "mail_8@mail.mail",
        "mail_9@mail.mail"
    ]
    
    private init() {}
}
