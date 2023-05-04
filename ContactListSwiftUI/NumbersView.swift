//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Max Franz Immelmann on 5/4/23.
//

import SwiftUI

struct NumbersView: View {
    let personInfo: [Person]
    
    var body: some View {
        List(personInfo) {person in
            Section(header: Text(person.fullName)) {
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
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(personInfo: Person.getPersonList())
    }
}
