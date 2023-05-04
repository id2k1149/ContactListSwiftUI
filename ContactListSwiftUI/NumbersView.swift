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
        List(personInfo, id: \.self) {person in
            Text("\(person.firstName) \(person.lastName)")
            Text(person.phoneNumber)
            Text(person.email)
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(personInfo: Person.getPersonList())
    }
}
