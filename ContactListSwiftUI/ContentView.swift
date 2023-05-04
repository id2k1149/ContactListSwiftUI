//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Max Franz Immelmann on 5/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
