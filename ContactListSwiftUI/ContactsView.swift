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
        VStack {
            Text("Contact List")
                .font(.title)
                .bold()
            
            List(
                personInfo,
                id: \.self) { person in
                    Text("\(person.firstName) \(person.lastName)")
                }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(personInfo: Person.getPersonList() )
    }
}
