//
//  LoginView.swift
//  SwiftUINavigation
//
//  Created by Eric Loew on 10/3/19.
//  Copyright © 2019 erl. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var userSettings: UserSettings
    
    @State var userName: String = ""
    @State var password: String = ""
    private var isValid: Bool {
        !userName.isEmpty
    }
    
    var body: some View {
        VStack {
            TextField("Enter User Name", text: $userName)
                .padding(.top)
            SecureField("Enter a password", text: $password)
                .padding(.top)
            HStack {
                if isValid {
                    Button(action: signin) {
                        Text("Login")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                    }
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 44)
                    .background(Color.primary)
                        .background(Color(UIColor(named: "colorPrimary")!))
                    .foregroundColor(Color(UIColor(named: "colorPrimaryText")!))
                    .padding(.leading).padding(.trailing).padding(.top)
                }
                Button(action: {self.presentationMode.wrappedValue.dismiss()}) {
                    Text("Cancel")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                }
                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 44)
                .background(Color(UIColor(named: "colorPrimary")!))
                .foregroundColor(Color(UIColor(named: "colorPrimaryText")!))
                .padding(.leading).padding(.trailing).padding(.top)
            }
            Button(action: {print("Forgot Password")}) {
                Text("Forgot Password")
            }
            .padding(.top)

        }
        .padding(.leading).padding(.trailing)
    }
    func signin() {
        if (userName.count > 0) {
            userSettings.setup(userId: userName)
            self.presentationMode.wrappedValue.dismiss()
        }
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
