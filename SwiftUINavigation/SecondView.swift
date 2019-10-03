//
//  SecondView.swift
//  SwiftUINavigation
//
//  Created by Eric Loew on 10/2/19.
//  Copyright © 2019 erl. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("Go Back \(userSettings.userId)")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
