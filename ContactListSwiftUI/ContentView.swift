//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Max Franz Immelmann on 5/4/23.
//

import SwiftUI

struct ContentView: View {
    private let personList = Person.getPersonList()
    
    var body: some View {
        NavigationStack {
            TabView {
                ContactsView(personInfo: personList)
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Contacts")
                    }
                NumbersView(personInfo: personList)
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
