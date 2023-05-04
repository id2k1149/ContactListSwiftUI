//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Max Franz Immelmann on 5/4/23.
//

import SwiftUI

struct ContactsView: View {
    let personInfo: [Person]
    
    var body: some View {
        NavigationStack {
            List(personInfo) {person in
                NavigationLink(destination: UserProfileView(person: person)) {
                    Text(person.fullName)
                        .font(.title3)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(personInfo: Person.getPersonList() )
    }
}
