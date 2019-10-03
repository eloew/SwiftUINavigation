//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Eric Loew on 10/1/19.
//  Copyright © 2019 erl. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userSettings: UserSettings
    var body: some View {
        Group() {
            if userSettings.userId.count > 0  {
                MainView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
