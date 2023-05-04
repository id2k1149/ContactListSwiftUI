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
        List(personInfo, id: \.self) {person in
            Text("\(person.firstName) \(person.lastName)")
                .font(.title3)
        }
        .listStyle(.plain)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(personInfo: Person.getPersonList() )
    }
}
