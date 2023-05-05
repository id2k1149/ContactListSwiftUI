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
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
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
        .navigationTitle(person.fullName)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
    
    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.backward")
            Text("Back")
        })
    }
    
    @Environment(\.presentationMode) var presentationMode
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(person: Person.getPersonList()[0])
    }
}
