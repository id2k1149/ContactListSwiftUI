//
//  UserProfileView.swift
//  ContactListSwiftUI
//
//  Created by Max Franz Immelmann on 5/4/23.
//

import SwiftUI

struct UserProfileView: View {
    let person: Person
    
    var body: some View {
        VStack {
            Text(person.fullName)
                .font(.largeTitle)
                .bold()
            
            List {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    
                HStack {
                    Image(systemName: "phone")
                    Text(person.phoneNumber)
                }
                HStack {
                    Image(systemName: "tray")
                    Text(person.email)
                }
                
            }
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(person: Person.getPersonList()[0])
    }
}
