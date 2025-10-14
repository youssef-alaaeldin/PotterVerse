//
//  UserDefaults.swift
//  Fashly
//
//  Created by Yousuf Abdelfattah on 29/07/2025.
//

import Foundation

extension UserDefaults {
    enum Key: String {
        case userToken
        case userCompletedAuthentication
    }

    func removeObject(forKey key: Key) {
        removeObject(forKey: key.rawValue)
    }

    var getUserToken: String? {
        get {
            return string(forKey: Key.userToken.rawValue)
        }
        set {
            if let value = newValue {
                set(value, forKey: Key.userToken.rawValue)
            } else {
                removeObject(forKey: Key.userToken.rawValue)
            }
        }
    }
    
    var userCompletedAuthenticationFlow: Bool? {
        get {
            return bool(forKey: Key.userCompletedAuthentication.rawValue)
        }
        set {
            if let value = newValue {
                set(value, forKey: Key.userCompletedAuthentication.rawValue)
            } else {
                removeObject(forKey: Key.userCompletedAuthentication.rawValue)
            }
        }
    }
}
