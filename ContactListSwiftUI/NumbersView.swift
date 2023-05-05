//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Max Franz Immelmann on 5/4/23.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) {person in
                Section(header: Text(person.fullName)
                    .textCase(nil)
                    .bold()
                    .font(.title3)) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(person.phoneNumber)
                    }
                    HStack {
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text(person.email)
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getPersonList())
    }
}
