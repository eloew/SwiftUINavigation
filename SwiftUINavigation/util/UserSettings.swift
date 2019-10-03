//
//  UserSettings.swift
//  ChoreNinja
//
//  Created by Eric Loew on 10/2/19.
//  Copyright © 2019 erl. All rights reserved.
//

import Foundation

class UserSettings: ObservableObject {
   @Published var userId = ""
    @Published var showLogin = false
    
    let settings = Settings()
    
    init() {
        
        setup(userId: settings.userId)
    }
    
    func setup(userId: String) {
        settings.setUserId(value: userId)
        self.userId = userId
        showLogin = (userId.count == 0)
    }
}

