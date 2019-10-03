//
//  AccountView.swift
//
//  Created by Eric Loew on 10/1/19.
//  Copyright © 2019 erl. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("Hello \(userSettings.userId)!")
            .navigationBarItems(trailing:
                Button(
                    action: {
                        self.signOut()
                    },
                    label: { Text("Logout") }
                )
            )
        }
    }
    func signOut() {
        print("signOut")
        userSettings.setup(userId: "")
        self.presentationMode.wrappedValue.dismiss()
    }

}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
