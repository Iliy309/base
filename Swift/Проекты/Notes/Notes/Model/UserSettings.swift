//
//  UserSettings.swift
//  DefaultsProject
//
//  Created by Алексей Пархоменко on 17.03.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

//final class UserSettings {
//
//    private enum SettingsKeys: String {
//        case userModel
//    }
//
//    static var userModel: Notes! {
//        get {
//            guard let savedData = UserDefaults.standard.object(forKey: SettingsKeys.userModel.rawValue) as? Data, let decodedModel = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(savedData) as? Notes else { return nil }
//            return decodedModel
//        }
//        set {
//            let defaults = UserDefaults.standard
//            let key = SettingsKeys.userModel.rawValue
//
//            if let userModel = newValue {
//                if let savedData = try? NSKeyedArchiver.archivedData(withRootObject: userModel, requiringSecureCoding: false) {
//                    print("value: \(userModel) was added to key \(key)")
//                    defaults.set(savedData, forKey: key)
//                } else {
//                    defaults.removeObject(forKey: key)
//                }
//            }
//        }
//    }
//}
//
   
