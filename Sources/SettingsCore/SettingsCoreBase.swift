//
//  SettingsCoreBase.swift
//  SettingsCore
//
//  Created by Ondrej Rafaj on 20/2/2018.
//

import Foundation
import ApiCore
import Vapor


public class SettingsCoreBase {
    
    public static func configure(_ config: inout Config, _ env: inout Vapor.Environment, _ services: inout Services) throws {
        ApiCoreBase.controllers.append(SettingsController.self)
        
        ApiCoreBase.add(model: Setting.self, database: .db)
    }
    
}
