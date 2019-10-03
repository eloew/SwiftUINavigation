//
//  Settings.swift
//  RIOps2Camera
//
//  Created by Eric Loew on 1/3/19.
//  Copyright © 2019 Houston Methodist Research Institute. All rights reserved.
//
/*

 */
import Foundation
class Settings {
    let prefUserId = "prefUserId"
    let prefUserName = "prefUserName"
    
    init() {
        //UserDefaults.standard.set("test",forKey: "uid")
        userId = UserDefaults.standard.string(forKey: prefUserId) ?? ""
        userName = UserDefaults.standard.string(forKey: prefUserName) ?? ""
    }
    
    var userId: String
    var userName: String
    
    func setUserId(value: String) {
        userId = value
        UserDefaults.standard.set(value,forKey: prefUserId)
    }
   
    func setUserName(value: String) {
        userName = value
        UserDefaults.standard.set(value,forKey: prefUserName)
    }

    
    func isAuthorized()-> Bool {
        return (userId.count > 0)
    }

    func clearAuth() {
        setUserId(value: "")
        setUserName(value: "")
    }

    
}

