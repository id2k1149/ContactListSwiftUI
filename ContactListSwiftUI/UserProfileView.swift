//
//  UserProfileView.swift
//  ContactListSwiftUI
//
//  Created by Max Franz Immelmann on 5/4/23.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        Image(systemName: "person.fill")
            .resizable()
            .frame(width: 100, height: 100)
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
