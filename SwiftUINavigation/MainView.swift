//
//  MainView.swift
//  SwiftUINavigation
//
//  Created by Eric Loew on 10/3/19.
//  Copyright © 2019 erl. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Show Detail View")
                }
                .navigationBarItems(trailing:
                    NavigationLink(destination: AccountView()) {
                        Image(uiImage: UIImage(named: "account")!)
                    }
                )
            }
            .navigationBarTitle("Main View")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
